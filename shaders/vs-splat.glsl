uniform sampler2D t_pos;

varying vec3 vPos;
varying float vDist; 
void main(){


  vec4 pos = texture2D( t_pos , position.xy );
  vDist = pos.w;

  vec3 dif = cameraPosition - pos.xyz;

  gl_PointSize = min( 40. ,   5000. / ( length( dif ) * ( abs(vDist * 10.) + .1 )));

  vPos = ( modelMatrix * vec4( pos.xyz , 1. ) ).xyz;

  gl_Position = projectionMatrix * modelViewMatrix * vec4( pos.xyz , 1. );


}
