attribute ve4 Position;
attribute vec2 TextureCoords;
varying vec2 TextureCoordsVarying;

void main(void)
{
    gl_Position = Position;
    TextureCoordsVarying = TextureCoords;
}