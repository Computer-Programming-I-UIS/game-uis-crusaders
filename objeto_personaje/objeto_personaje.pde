
class personaje{
personaje(int xp,int yp, int rp){
  x=xp; y=yp;r=rp;
}//cierra el constructor 

void control() {
//  translate(400,300);
  if (keyPressed){
  if(key ==CODED){
          if ((keyCode==UP && y>200 && y>340 && y>570) //tres zonas filas 
            ||(keyCode==UP && x>90 && x<140 && y<250 && y>90+r) //puente
            ||(keyCode==UP && x>620 && y>160+r/2) //auditorio esquina sup.derecha 
            ||(keyCode==UP && x>180 && x<540 && y<400 &&y>340)//segunda fila abajao del centro pkm
            ||(keyCode==UP && x>90 && x<180 &&y>220&&y<600) //subida desde borde inferior
            ||(keyCode==UP && x>560 && x<800 && y>560 ))
              {y=y-5;}
      
          else if(keyCode==DOWN && y<600-r/2||
                  keyCode==DOWN && x>90 &&x<140 && y<160
                                                )
                  {y=y+5;}
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
