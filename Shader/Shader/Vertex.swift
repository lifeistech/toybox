//
//  Vertex.swift
//  Shader
//
//  Created by Yuki Kuwashima on 2023/02/08.
//

import simd

struct Vertex {
    var position: simd_float3
    var color: simd_float4
    static let memorySize: Int = MemoryLayout<Self>.stride
}
