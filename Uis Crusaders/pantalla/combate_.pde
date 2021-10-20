class Combate {

int xc,yc,rc; 
Combate(int xcp,int ycp, int rcp){
  xc=xcp; yc=ycp;rc=rcp;
}//cierra el constructor 

void campo(){
   fill(0);
   circle(xc,yc,rc);
   if (x<520 && x>460 && y>=340 &&y<=410){
   fill(#FF0000);
   circle(xc,yc,rc);
   preguntar2=true;
   }else {preguntar2=false;}
  pushMatrix();
  translate(xc,yc);
  image(mraspo,-30,-10,60,70);
  popMatrix();
}

}//cierra combate 
