//
//  Renderer.swift
//  ComputeShader
//
//  Created by クワシマ・ユウキ on 2022/07/27.
//

import MetalKit

class Renderer: NSObject {
    
    var computePipelineState: MTLComputePipelineState
    var args: [Float]
    var frameTimeStart: Date!
    
    init(functionName: String) {
        args = [0.0, 0.0]
        let function = ShaderCore.library.makeFunction(name: functionName)!
        computePipelineState = try! ShaderCore.device.makeComputePipelineState(function: function)
        frameTimeStart = Date()
    }
}

extension Renderer: MTKViewDelegate {
    
    public func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
    }
    
    public func draw(in view: MTKView) {
        view.drawableSize = CGSize(width: view.frame.width, height: view.frame.height)
        guard let drawable = view.currentDrawable else {
            return
        }
        self.args[0] += Float(Date().timeIntervalSince(frameTimeStart))
        let threadsPerThreadgroup = MTLSize(width: 16, height: 16, depth: 1)
        let threadGroupCount = MTLSize(
            width: Int(ceilf(Float(view.frame.width) / Float(threadsPerThreadgroup.width))),
            height: Int(ceilf(Float(view.frame.height) / Float(threadsPerThreadgroup.height))),
            depth: 1
        )
        let argsBuffer = ShaderCore.device.makeBuffer(bytes: args, length: MemoryLayout<Float>.stride * args.count, options: [])!
        let commandBuffer = ShaderCore.commandQueue.makeCommandBuffer()
        let commandEncoder = commandBuffer?.makeComputeCommandEncoder()
        commandEncoder?.setComputePipelineState(computePipelineState)
        commandEncoder?.setTexture(drawable.texture, index: 0)
        commandEncoder?.setBuffer(argsBuffer, offset: 0, index: 0)
        commandEncoder?.dispatchThreadgroups(threadGroupCount, threadsPerThreadgroup: threadsPerThreadgroup)
        commandEncoder?.endEncoding()
        commandBuffer?.present(drawable)
        commandBuffer?.commit()
        frameTimeStart = Date()
    }
}
