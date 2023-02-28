//
//  Renderer.swift
//  Shader
//
//  Created by Yuki Kuwashima on 2023/02/08.
//

import MetalKit

class Renderer: NSObject {
    
    let renderPipelineState: MTLRenderPipelineState
    var elapsedTime: Float = 0
    var date = Date()
    
    override init() {
        let vertexFunction = ShaderCore.library.makeFunction(name: "example_vertex")!
        let fragmentFunction = ShaderCore.library.makeFunction(name: "example_fragment")!
        
        let vertexDescriptor = Self.createVertexDescriptor()
        
        let renderPipelineDescriptor = Self.createRenderPipelineDescriptor(vertexFunc: vertexFunction, fragmentFunc: fragmentFunction)
        renderPipelineDescriptor.vertexDescriptor = vertexDescriptor
        
        renderPipelineState = try! ShaderCore.device.makeRenderPipelineState(descriptor: renderPipelineDescriptor)
        
        super.init()
    }
}

extension Renderer {
    static func createRenderPipelineDescriptor(vertexFunc: MTLFunction, fragmentFunc: MTLFunction) -> MTLRenderPipelineDescriptor {
        let renderPipelineDescriptor = MTLRenderPipelineDescriptor()
        renderPipelineDescriptor.colorAttachments[0].pixelFormat = ConstantParameters.pixelFormat
        renderPipelineDescriptor.vertexFunction = vertexFunc
        renderPipelineDescriptor.fragmentFunction = fragmentFunc
        return renderPipelineDescriptor
    }
    static func createVertexDescriptor() -> MTLVertexDescriptor {
        let vertexDescriptor = MTLVertexDescriptor()
        
        vertexDescriptor.attributes[0].format = .float3
        vertexDescriptor.attributes[0].offset = 0
        vertexDescriptor.attributes[0].bufferIndex = 0
        
        vertexDescriptor.attributes[1].format = .float4
        vertexDescriptor.attributes[1].offset = MemoryLayout<simd_float3>.stride
        vertexDescriptor.attributes[1].bufferIndex = 0
        
        vertexDescriptor.layouts[0].stride = MemoryLayout<simd_float3>.stride + MemoryLayout<simd_float4>.stride
        
        return vertexDescriptor
    }
}

extension Renderer: MTKViewDelegate {
    
    public func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {}
    
    public func draw(in view: MTKView) {
        view.drawableSize = CGSize(width: view.frame.width, height: view.frame.height)
        guard let drawable = view.currentDrawable else {
            return
        }
        guard let renderPassDescriptor = view.currentRenderPassDescriptor else {
            return
        }
        guard let commandBuffer = ShaderCore.commandQueue.makeCommandBuffer() else {
            return
        }
        guard let renderCommandEncoder = commandBuffer.makeRenderCommandEncoder(descriptor: renderPassDescriptor) else {
            return
        }
        
        renderCommandEncoder.setRenderPipelineState(renderPipelineState)
        
        renderCommandEncoder.setViewport(
            MTLViewport(
                originX: 0,
                originY: Double((view.bounds.height - view.bounds.width) / 2),
                width: Double(view.bounds.width),
                height: Double(view.bounds.width),
                znear: -1,
                zfar: 1))
        
        let geometrySize: Float = 1.0
        let vertices = createVertex(geometrySize: geometrySize)
        renderCommandEncoder.setVertexBytes(vertices, length: Vertex.memorySize * vertices.count, index: 0)
        renderCommandEncoder.drawPrimitives(type: .triangle, vertexStart: 0, vertexCount: vertices.count)
        
        renderCommandEncoder.endEncoding()
        commandBuffer.present(drawable)
        commandBuffer.commit()
        
        elapsedTime += Float(Date().timeIntervalSince(date))
        date = Date()
    }
    
    func createVertex(geometrySize: Float) -> [Vertex] {
        let vertex1 = Vertex(
            position: simd_float3(
                cos(elapsedTime) * geometrySize,
                sin(elapsedTime) * geometrySize,
                0),
            color: simd_float4(
                0.5,
                abs(sin(elapsedTime * 1)),
                abs(cos(elapsedTime * 1)),
                1))
        let vertex2 = Vertex(
            position: simd_float3(
                cos(elapsedTime + Float.pi * 2 / 3) * geometrySize,
                sin(elapsedTime + Float.pi * 2 / 3) * geometrySize,
                0),
            color: simd_float4(
                abs(cos(elapsedTime * 0.3)),
                abs(sin(elapsedTime * 0.3)),
                0.5,
                1))
        let vertex3 = Vertex(
            position: simd_float3(
                cos(elapsedTime - Float.pi * 2 / 3) * geometrySize,
                sin(elapsedTime - Float.pi * 2 / 3) * geometrySize,
                0),
            color: simd_float4(
                abs(sin(elapsedTime * 0.5)),
                0.5,
                abs(cos(elapsedTime * 0.5)),
                1))
        return [vertex1, vertex2, vertex3]
    }
}
