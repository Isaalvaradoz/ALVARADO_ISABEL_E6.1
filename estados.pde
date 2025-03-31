//Movimiento pelota

int numImagen;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;

void setup(){
  size(700,500);
  
  
  //Iniciamos en la primera pantalla
  numImagen = 1;
  
  imagen1 = loadImage("img1.jpg");
  imagen2 = loadImage("img2.jpg");
  imagen3 = loadImage("img3.jpg");
  imagen4 = loadImage("img4.jpg");
  imagen5 = loadImage("img5.jpg");
  imagen6 = loadImage("img6.jpg");
}

void draw(){
  background(#F7C8EC);
  
  //Si el numImagen se pasa de 6, vuelve a ser 1. Y si es uno y se mueve para abajo/izq, se pasa a 6
  if(numImagen<1)
    numImagen=6;
  if(numImagen>6)
    numImagen=1;
  
  //Pinta la imagen dependiendo del numero
  //img1
  if(numImagen==1)
    image(imagen1,0,0);
  //img2
  if(numImagen==2)
    image(imagen2,0,0);
  //img3
  if(numImagen==3)
    image(imagen3,0,0);
  //img4
  if(numImagen==4)
    image(imagen4,0,0);
  //img5
  if(numImagen==5)
    image(imagen5,0,0);
  //img6
  if(numImagen==6)
    image(imagen6,0,0);
  
}

void keyPressed(){
  if(keyCode == RIGHT){
  numImagen+=1;
  }
  
  else if(keyCode == UP){
  numImagen+=1;
  }
  
  else if(keyCode == LEFT){
  numImagen-=1;
  }
  
  else if(keyCode == DOWN){
  numImagen-=1;
  } 
}
