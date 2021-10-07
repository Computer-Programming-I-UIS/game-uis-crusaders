//----------------------------------------------biblioteca audio-----------------------------------------------------------------------//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//----------------------------------------------biblioteca sprites---------------------------------------------------------------------//
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//--------------------------------------------------sprites----------------------------------------------------------------------------//
Sprite prota1;//crea el sprite
Sprite newton;
StopWatch reloj;
float tiempo=0;
//--------------------------------------------------sonido-----------------------------------------------------------------------------//
Minim minim;
AudioPlayer menusonido;
AudioPlayer mapasong;

//-------------------------------------------------imagenes----------------------------------------------------------------------------//
PImage fondo1;
PImage run1;
PImage menu,iconoM;
PImage instruccion;


//------------------------------------------------personaje-----------------------------------------------------------------------------//
int x, y, r;
int xn, yn;//npc
//---------------------------------------------clase p,npc,en---------------------------------------------------------------------------//
personaje prota;
npc npcnewton;
//--------------------------------------------------menu--------------------------------------------------------------------------------//
boolean juego=false;//menu de inicio
boolean instrucciones=false;

void setup() {
  size (800, 600);
//---------------------------------------------------sprite-------------------------------------------------------------------//
  prota1=new Sprite(this, "prota.png", 4, 4, 0);//carga el sprite
  newton=new Sprite(this, "newton.png", 4, 1, 0);//carga el sprite #filas #colomnas
  reloj=new StopWatch();//el que cuenta el tiempo para los sprites
//---------------------------------------------------sonido-------------------------------------------------------------------//
  minim= new Minim(this);
  menusonido= minim.loadFile("Menu.mp3");
  mapasong=  minim.loadFile("mapa.mp3");

//--------------------------------------------------imagenes------------------------------------------------------------------//
  fondo1 = loadImage("R.png");
  run1 = loadImage("run1.JPG");
  menu= loadImage("menu.jpeg");
  iconoM= loadImage("icono-menu.png");
  instruccion= loadImage("instrucciones.JPG");
  //objetos
  prota= new personaje (100, 122, 30);//CIRCULO
  npcnewton= new npc(725, 155, 20);
}//fin void setup
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw() { 
  //contador de sprites
  tiempo=(float)reloj.getElapsedTime();
  S4P.updateSprites(tiempo);
  //centrar imagenes 
  imageMode (CENTER);//fondo,menu de opciones
  background(0);
  ///_________________________________________________________________________menu__________________________________________________________///
  pushMatrix();
  scale(0.89);
  image(menu,450,350,900,700);
  menusonido.play();//------------------------sonido menu______________________________
  popMatrix();
  ////////////////////-----selecciones menu principal -------------------------------------------////////////////////////
  //puntos de pantalla para delimitar regiones //
  /*
  textSize(50);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200); 
  */
 /////-----------------------------------------------------menu principal ------------------------------------------------------------////// 
  if(mousePressed && mouseX<=225 && mouseX>=15 && mouseY>225 && mouseY<290){juego=true;} else if(juego && mousePressed && mouseX>735 && mouseX<785 && mouseY>10 && mouseY<60){juego=false;}//127=suprimir
  if(mousePressed && mouseX<=240 && mouseX>=10 && mouseY>414 && mouseY<450){instrucciones=true;}else if(instrucciones && mousePressed && mouseX>735 && mouseX<785 && mouseY>10 && mouseY<60){instrucciones=false;}
  
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (juego){
  //-------------------------------------------------------sonido--------------------------------------------------------------------/////////////7
  menusonido.pause();//--------------pausa musica 
  mapasong.play();
  
  //---------------------mapa-------------------------------------//
  pushMatrix();
  image(fondo1, 600, 400);//fondo de mapa
  scale(0.05);
  image(iconoM,15220,680);
  popMatrix();
//puntos de pantalla 
 /*
  textSize(50);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200); 
*/
  //---------------------dibujo-personaje--------------------------//
  prota.move();
  prota.control();
  npcnewton.punto();
  npcnewton.preguntas();
  //----------------------sprite-------------------------------------------------------------------------------------------------------------------------------///
  }
  else if (instrucciones){
  pushMatrix();
  scale(0.89);
  image(instruccion,450,350,900,700);
  pushMatrix();
  scale(0.05);
  image(iconoM,17380,680);
  popMatrix();
  translate(450,300);
  scale(0.1);
  prota1.setFrameSequence(0,3,1);
  prota1.draw();
 
  popMatrix();
  }
  
  
  
  
  
}//fin del draw
