//
//  Shader.metal
//  ComputeShader
//
//  Created by クワシマ・ユウキ on 2022/07/27.
//

#include <metal_stdlib>
using namespace metal;

kernel void count(  texture2d<float, access::write> tex [[texture(0)]],
                    device float* args [[buffer(0)]],
                    ushort2 gid [[thread_position_in_grid]]) {
    
    float2 center = float2(tex.get_width() / 2, tex.get_height() / 2);
    float4 color = float4(0.0, 0.0, 0.0, 1.0);
    
    for (int i = 1; i <= round(args[1]); i++) {
        float rad = tex.get_width() / 3.0;
        float2 point = center + float2(rad * cos(args[0] * 0.1 * i), rad * sin(args[0] * 0.1 * i));
        float dist = pow(pow(point.x - gid.x, 2) + pow(point.y - gid.y, 2), 0.5);
        float size = 0.0 + 8.0 * abs(sin(args[0] * 1 + i % 7));

        color = color + float4(size / dist * abs(sin(args[0] * 0.1 * i)),
                               size / dist * abs(cos(args[0] * 0.2 * i)),
                               size / dist * abs(sin(args[0] * 0.3 * i)),
                               0.0);
    }
    
    tex.write(color, gid);
    
}
