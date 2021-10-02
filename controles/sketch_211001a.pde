PImage fondo1;
PImage run1;
//personaje 
int x,y,r;
int xn,yn;//npc
//clase p,npc,en
personaje prota;
npc npc1;

void setup(){
size (800,600);
fondo1 = loadImage("R.png");
run1 = loadImage("run1.JPG");
prota= new personaje (100,150,30);
npc1= new npc(500,400,20);
}//fin void setup

void draw(){
  imageMode (CENTER);//fondo,menu de opciones 
  background(0,0);
  image(fondo1,600,400);
  
  //personaje
  prota.move();
  prota.control();
  
  //puntos de pantalla 
  textSize(30);
  text(mouseX,0,20);
  text(mouseY,0,50); 
}//fin del draw 
