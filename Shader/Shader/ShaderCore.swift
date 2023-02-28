//
//  ShaderCore.swift
//  Shader
//
//  Created by Yuki Kuwashima on 2023/02/08.
//

import Metal

enum ShaderCore {
    static let device: MTLDevice = MTLCreateSystemDefaultDevice()!
    static let library: MTLLibrary = ShaderCore.device.makeDefaultLibrary()!
    static let commandQueue: MTLCommandQueue = ShaderCore.device.makeCommandQueue()!
}
