//GrayScale 计算公式：
//float: Gray = R*0.3 + G*0.59 + B*0.11
//int: Gray = (R*30 + G*59 + B*11)/100
//average method: Gray = (R + G + B)/3
//Green: Gray = G

precision highp float;
uniform sampler2D Texture;
varying highp vec2 TextureCoordsVarying;
const highp vec3 W = vec3(0.2125, 0.7154, 0.0721)

void main(void)
{
    vec4 mask = texture2D(Texture, TextureCoordsVarying);
    float luminance = dot(mask.rgb, W);
    gl_FragColor = vec4(vec3(luminance), 1.0);
}