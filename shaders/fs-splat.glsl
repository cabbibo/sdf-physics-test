varying vec3 vPos;
varying float vDist;
void main(){

  gl_FragColor = vec4( normalize( vPos ) * .5 + .5 ,  1. );

}