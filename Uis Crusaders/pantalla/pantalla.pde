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
Sprite porras;

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
PImage ajuste;
PImage credi;
PImage mraspo;
PImage legal;
//------------------batalla-------------
boolean preguntar2=false;

PImage terreno;


//------------------------------------------------personaje-----------------------------------------------------------------------------//
int x, y, r;
int xn, yn;//npc
//-------------------------------------------------npc----------------------------------------------------------------------------------//
int pre=0;

//---------------------------------------------clase p,npc,en---------------------------------------------------------------------------//
personaje prota;
npc npcnewton;

Combate enemigo;
protacombate admin;
//--------------------------------------------------menu--------------------------------------------------------------------------------//
boolean juego=false;//menu de inicio
boolean instrucciones=false;
boolean ajustes=false;
boolean creditos=false;

void setup() {
  size (800, 600);
//---------------------------------------------------sprite-------------------------------------------------------------------//
  prota1=new Sprite(this, "prota.png", 4, 4, 0);//carga el sprite
  newton=new Sprite(this, "newton.png", 2, 1, 0);//carga el sprite #filas #colomnas
  porras=new Sprite(this,"porrast.png",5,1,0);
  
  reloj=new StopWatch();//el que cuenta el tiempo para los sprites
//---------------------------------------------------sonido-------------------------------------------------------------------//
  minim= new Minim(this);
  menusonido= minim.loadFile("Menu.mp3");
  mapasong=  minim.loadFile("mapa.mp3");


//--------------------------------------------------imagenes------------------------------------------------------------------//
  fondo1 = loadImage("R.png");
  menu= loadImage("menupro.png");
  iconoM= loadImage("icono-menu.png");
  instruccion= loadImage("instrucciones.JPG");
  ajuste= loadImage("ajustes.JPG");
  credi= loadImage("creditos.jpeg");
  mraspo= loadImage("mpraspo.png");
  legal=loadImage("M18.jpeg");
//----------------------------------------------batalla
  terreno= loadImage("fondobt.png");
//------------------------------------------------objetos
  prota= new personaje (100, 122, 30);//CIRCULO
  npcnewton= new npc(725, 155, 20);
  
  enemigo = new Combate (520,350,20);
  admin= new protacombate(400,400,0);
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
  image(legal,790,600,100,120);
  pushMatrix();
  translate(550,410);
  scale(2);
  porras.setFrameSequence(0,4,0.2);
  porras.draw();
  popMatrix();
  //-------------------------------------------------------------------sonido menu__________________________________________________________///
 
  if(!menusonido.isPlaying()){menusonido.loop();}
   
  mapasong.pause();
  popMatrix();
  ////////////////////-------------------------------------selecciones menu principal -------------------------------------------////////////////////////
  //puntos de pantalla para delimitar regiones //
  /*
  textSize(50);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200); 
  */
 /////-----------------------------------------------------menu principal ------------------------------------------------------------////// 
if(mousePressed && mouseX<=235 && mouseX>=7 && mouseY>230 && mouseY<290){juego=true;} else if(juego && mousePressed && mouseX>735 && mouseX<785 && mouseY>10 && mouseY<60){juego=false;}//127=suprimir

if(mousePressed && mouseX<=190 && mouseX>=0 && mouseY>330 && mouseY<375){ajustes=true;} else if(ajustes && mousePressed && mouseX>750 && mouseX<800 && mouseY>6 && mouseY<55){ajustes=false;}//127=suprimir

if(mousePressed && mouseX<=270 && mouseX>=0 && mouseY>410 && mouseY<444){instrucciones=true;}else if(instrucciones && mousePressed && mouseX>750 && mouseX<800 && mouseY>6 && mouseY<55){instrucciones=false;}

if(mousePressed && mouseX<=250 && mouseX>=0 && mouseY>540 && mouseY<590){creditos=true;}else if(creditos && mousePressed && mouseX>715 && mouseX<785 && mouseY>15 && mouseY<80){creditos=false;}  
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (juego){
  //-------------------------------------------------------sonido--------------------------------------------------------------------/////////////7
  menusonido.pause();//--------------pausa musica 
  //if(!mapasong.isPlaying()){mapasong.loop();}
  mapasong.play();
  
  //---------------------mapa-------------------------------------//
  pushMatrix();
  image(fondo1, 600, 400);//fondo de mapa
  scale(0.05);
  image(iconoM,15220,680);
  popMatrix();
  
//puntos de pantalla 
 
  textSize(50);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200); 

  //---------------------dibujo-personaje--------------------------//
  prota.move();
  prota.control();
  npcnewton.punto();
  npcnewton.preguntas();
//-------------------------------enemigo----------------------------//
  enemigo.campo();
  if(preguntar2){
  fill(0);
  //mapa combate 
  pushMatrix();translate(375,300);
  image(terreno,0,0,700,500);
  popMatrix();
  //-----------
  admin.btcontrol();
  admin.dibujo();
  admin.gravedad();
  admin.disparo();
  admin.hitbox();
  }




















  //----------------------sprite-------------------------------------------------------------------------------------------------------------------------------///
  }
  else if (instrucciones){//--------------------------menu de instrucciones //
 
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
  /*
  textSize(500);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,400); */
  popMatrix();
  
  }
  else if (ajustes){//----------------------------------------------------------------------sonido configuracion----------------------------------------------------------------
  pushMatrix();
  scale(0.89);
  image(ajuste,450,350,900,700);
  pushMatrix();
  scale(0.05);
  fill(#FFFFFF);
  rect(17000,280,800,800);
  image(iconoM,17380,680);
  popMatrix();
  translate(200,500);
  scale(0.1);
  prota1.setFrameSequence(0,3,1);
  prota1.draw();
//////////////////////////puntos sobre pantalla ///////////
/*
 textSize(500);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,400); */
  popMatrix();

//////////////////////////////////////////////////////////7
  
  }
  else if (creditos){ 
  background(0);
  pushMatrix();
  int tiempo= second();
  translate(0,300-(tiempo)*4);
  image(credi,400,300,800,1200);
  popMatrix();
  fill(#FFFFFF);
  rect(713,13,67,70);
  image(iconoM,750,50,80,80);
 //-----------------
 /* textSize(30);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200); */
//---------------
  translate(100,400); 
  scale(0.1);
  prota1.setFrameSequence(0,15,1);
  prota1.draw();
//////////////////////////puntos sobre pantalla ///////////
 
//////////////////////////////////////////////////////////7
  
  }  

}//fin del draw
