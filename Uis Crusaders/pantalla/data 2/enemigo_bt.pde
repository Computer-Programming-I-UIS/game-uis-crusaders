int xene,yene;
class enemigo{
enemigo(int xe,int ye){xene=xe;yene=ye;}//constructor 
//-------------------------------------------------------------------------
void ia(){
translate(xene,yene);

porras.setFrameSequence(0,1,0.3);
porras.draw();


}

}//cierra la clase
