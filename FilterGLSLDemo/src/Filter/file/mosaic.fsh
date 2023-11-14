attribute mediump float;

varying vec2 TextureCoordsVarying;
uniform sampler2D Texture;
const vec2 TexSize = vec2(400.0, 400.0); //resize X and Y
const vec2 mosaicSize = vec2(4.0, 4.0); //per mosaic point size

void main()
{
    vec2 intXY = vec2(TextureCoordsVarying.x*TexSize.x, TextureCoordsVarying.y*TexSize.y); //resize current XY
    vec2 XYMosaic = vec2(floor(intXY.x/mosaicSize.x)*moscicSize.x, floor(intXY.y/mosaicSize.y)*mosaicSize.y); //color display range
    vec2 UVMosaic = vec2(XYMosaic.x/TexSize.x, XYMosaic.y/TexSize.y);
    gl_FragColor = color;
}