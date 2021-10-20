class personaje{
personaje(int xp,int yp, int rp){
  x=xp; y=yp;r=rp;
}//cierra el constructor 

boolean up=false,donw=false,rith=false,left=false;
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
          if(y<130 &&x<440&&x>140){y=y+4;}//bajar del supp
          else if (x>90 &&x<140 && y<580){y=y+4;}//puente
          else if (x>90 &&x<180 && y<580){y=y+4;}//camino prin,,bajada
          else if (y<220){}
          else if (x>180 &&x<760 && y<220 &&y>200){y=y+4;} 
          else if (x>180 &&x<530 && y<380){y=y+4;}//limite inf mid zone
          
          }
          else if(keyCode==RIGHT  ){
            if (x<760 &&y<246){x=x+20;}//limite borde
            else if (x<90&&x<180&& y>245&&y<340){}//limite gim
            else if (x<520&&y>330&&y<400){x=x+4;}//mitad
            else if (x>90&&x<180){x=x+4;}//bugg gim correcion
           
          }                                       
          else if(keyCode==LEFT&&x>95){x=x-4;}
          
   }//keyCoded
  }//keypessed
}//void control


void move(){  
  if (keyPressed && key==CODED )
    {
     if (keyCode==UP ){prota1.setFrameSequence(12,15,0.1);}                     
     else if(keyCode==DOWN ){prota1.setFrameSequence(0,3,0.1);}
     else if(keyCode==RIGHT  ){prota1.setFrameSequence(8,11,0.1);}                                       
     else if(keyCode==LEFT){prota1.setFrameSequence(4,7,0.1);}  
    } 
 pushMatrix();
 translate(x,y);
 scale(0.014);
 prota1.draw();
 popMatrix();
}//cierra el move 

}//cierra la clase 
