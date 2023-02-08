//
//  Shader.metal
//  Shader
//
//  Created by Yuki Kuwashima on 2023/02/08.
//

#include <metal_stdlib>
using namespace metal;

struct Vertex {
    float3 position [[ attribute(0) ]];
    float4 color [[ attribute(1) ]];
};

struct FragmentData {
    float4 position [[ position ]];
    float4 color;
};

vertex FragmentData example_vertex (const Vertex vIn [[ stage_in ]]) {
    FragmentData data;
    data.position = float4(vIn.position, 1.0);
    data.color = vIn.color;
    return data;
}

fragment half4 example_fragment (FragmentData data [[ stage_in ]]) {
    half4 resultColor = half4(data.color);
    return resultColor;
}

