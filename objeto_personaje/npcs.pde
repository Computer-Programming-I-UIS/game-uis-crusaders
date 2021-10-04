class npc{
int xn,yn,rn; boolean preguntar=false;
npc(int xp,int yp, int rp){
  xn=xp; yn=yp;rn=rp;
}//cierra el constructor 
void punto(){
   fill(0);
   circle(xn,yn,rn);
   if (x<695 && x>675 && y>=197 &&y<=217){
   fill(#FF0000);
   circle(xn,yn,rn); 
   preguntar=true;
   }else {preguntar=false;}
   newton.setFrameSequence(0,4,0.1);
   pushMatrix();
   translate(xn,yn);
   scale(0.3);
   newton.draw();
   popMatrix();
}//cierra el move 

void preguntas(){
  if (preguntar){
  fill(0);
  rect(10,490,730,100);
  }//if preguntar
    
}//void preguntar

}
