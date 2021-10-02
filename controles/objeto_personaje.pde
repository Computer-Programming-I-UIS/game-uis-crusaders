class personaje{


personaje(int xp,int yp, int rp){
  x=xp; y=yp;r=rp;
}//cierra el constructor 

void control() {
  translate(400,300);
  if (keyPressed){
  if(key ==CODED){
          if (keyCode==UP && y>200 ||keyCode==UP && x>90 && x<140
          && y>0+r ) {y=y-5;}
          else if(keyCode==DOWN && y<600-r/2){y=y+5;}
          else if(keyCode==RIGHT){x=x+5;}
          else if(keyCode==LEFT){x=x-5;}
                  } 
  }//keypessed
}//void control


void move(){
   fill(0);
   circle(x,y,r);
}//cierra el move 





}
