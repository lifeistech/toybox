//
//  ShaderCore.swift
//  ComputeShader
//
//  Created by クワシマ・ユウキ on 2022/07/27.
//

import Metal

final class ShaderCore {
    
    public static let device: MTLDevice = MTLCreateSystemDefaultDevice()!
    
    public static var library: MTLLibrary = {
        return ShaderCore.device.makeDefaultLibrary()!
    }()
    
    public static var commandQueue: MTLCommandQueue = {
        return ShaderCore.device.makeCommandQueue()!
    }()
    
}
