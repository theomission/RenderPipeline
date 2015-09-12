#version 400

in vec2 texcoord;
out vec4 result;
uniform ivec2 viewSize;
uniform samplerBuffer p3d_Texture0;

void main() {
    ivec2 vSize = viewSize / 3;
    ivec2 intCoord = ivec2(texcoord * vSize); 
    int offs = intCoord.x + intCoord.y * vSize.x;
    result = texelFetch(p3d_Texture0, offs) * 0.5;
    result.w = 1.0;
}