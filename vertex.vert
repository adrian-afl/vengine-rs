#version 450
#extension GL_ARB_separate_shader_objects : enable

out gl_PerVertex {
    vec4 gl_Position;
};

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inNormal;
layout(location = 2) in vec2 inTexCoord;
layout(location = 3) in vec4 inTangent;

layout(location = 0) out vec3 outNormal;
layout(location = 1) out vec2 outTexCoord;

void main() {
    vec3 pos = inPosition.xyz;
    pos.z *= 1.0;
    gl_Position = vec4(pos.xyz * 0.5, 1.0);
    outTexCoord = inTexCoord;
    outNormal = inNormal;
}