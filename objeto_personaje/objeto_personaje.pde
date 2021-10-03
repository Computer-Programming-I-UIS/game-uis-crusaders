
class personaje{
personaje(int xp,int yp, int rp){
  x=xp; y=yp;r=rp;
}//cierra el constructor 

void control() {

  if (keyPressed){
  if(key ==CODED){
          if (keyCode==UP ){
            if(y>110 &&y<120){y=y-5;}//borde sup
            else if((y>110) && (y<120) && (x<90) &&(x<440) ){y=y-5;}//cudrante sup      
            else if ((x>90&&x<140&&y>110)){y=y-5;}//escaleras y pasilo hasta 140
            else if ((x>90&&x<180&&y>200)){y=y-5;}//escaleras y pasilo hasta 180
            else if (y>340 && y<360){y=y-5;}
            else if ((y>340 && x<800&&x>140)){y=y-5;} //divisor mitad
            else if (y>570){y=y-5;}
            else if ( y>560 && y<800) {y=y-5;} //divisor inferior falla
           
          }                                  
          else if(keyCode==DOWN ){
          if(y<130 &&x<440&&x>140){y=y+5;}//bajar del supp
          else if (x>90 &&x<140 && y<580){y=y+5;}//puente
          else if (x>90 &&x<180 && y<580){y=y+5;}//camino prin,,bajada
          else if (y<220){}
          else if (x>180 &&x<760 && y<220 &&y>200){y=y+5;} 
          else if (x>180 &&x<530 && y<380){y=y+5;}//limite inf mid zone
          
          }
          else if(keyCode==RIGHT  ){
            if (x<760 &&y<246){x=x+5;}//limite borde
            else if (x<90&&x<180&& y>245&&y<340){}//limite gim
            else if (x<520&&y>330&&y<400){x=x+5;}//mitad
            else if (x>90&&x<180){x=x+5;}//bugg gim correcion
          }                                       
          else if(keyCode==LEFT&&x>95){x=x-5;}
                  } 
  }//keypessed
}//void control


void move(){
   fill(0);
   circle(x,y,r);
    //puntos de pantalla 
  textSize(30);
  text(x,0,20);
  text(y,0,50); 
}//cierra el move 





}
