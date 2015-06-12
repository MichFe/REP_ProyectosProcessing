PImage imagen;
float posX=125;
float posY=0;
float velX=2.5;
float velY=4;

void setup() {
  size(500, 500);
  imagen=loadImage("particula.png"); //Cargar Imagen.
}

void draw() {
  fill(255, 255, 255, 20);
  rect(0, 0, width, height);
  image(imagen, posX, posY); //Mostrar imagen, los ceros representan la posicion en "x" e "y", entre parentesis va tambien el nombre de la imagen que definimos en PImage

  posX=posX+velX;
  posY=posY+velY;

  if (posX>425) {
    velX=velX*-1;
  }
  if (posX<0) {
    velX=velX*-1;
  }
  if (posY>425) {
    velY=velY*-1;
  }

  if (posY<0) {
    velY=velY*-1;
  }
}

void keyPressed() {
 if(key==CODED){ if (keyCode==UP) {
    velY=abs(velY);
    velY=velY*-1;
  }
  if(keyCode==DOWN){
  velY=abs(velY);
  
  }
  
  if(keyCode==RIGHT){
  velX=abs(velX);
  }
  
  if(keyCode==LEFT){
  velX=abs(velX);
  velX=velX*-1;
  }}
}

