//
//  ShaderCore.swift
//  ComputeShader
//
//  Created by クワシマ・ユウキ on 2022/07/27.
//

import Metal

final class ShaderCore {
    public static let device: MTLDevice = MTLCreateSystemDefaultDevice()!
    public static let library: MTLLibrary = ShaderCore.device.makeDefaultLibrary()!
    public static let commandQueue: MTLCommandQueue = ShaderCore.device.makeCommandQueue()!
}
