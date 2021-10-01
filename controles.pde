
class personaje{


personaje(int xp,int yp, int rp){
  x=xp; y=yp;r=rp;
}//cierra el constructor 

void keyPressed() {
  translate(400,350);
  if(key ==CODED){
          if (keyCode==UP){y=y+10;}
          else if(keyCode==DOWN){y=y-10;}
          else if(keyCode==RIGHT){x=x-10;}
          else if(keyCode==LEFT){x=x+10;}
                  } 
  
}//keypessed

void diaplay(){


}//cierra el display



}
