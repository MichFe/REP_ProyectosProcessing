//Circulo
PImage destello;
PImage luz;

float tamX=0;
float tamY=0;
float luzX=0;
float luzY=0;
int i=0;

//posicion de la bola
float bolaPosX = 300;
float bolaPosY = 300;
float elipseCR=0;
float elipseCG=0;
float elipseCB=0;

float barraCR=0;
float barraCG=0;
float barraCB=0;

//velocidad Bola
float bolaVelX = 2;
float bolaVelY = 5;

//tamanos 
float bolaTam  = 50;

//Rectangulo

//posicion del rectangulo
float rectPosX = 300;
float rectPosY = 50;

//tamano del rectangulo
float rectWidth = 100;
float rectHeight = 20;

void setup() {
  size(500, 500);
  
  destello=loadImage("destello.png");
  luz=loadImage("luz.png");
}


void draw() {
  //Fondo blanco
  luzX=random(1000);
  luzY=random(1000);
  
    for (int i = 0; i < 30; i = i + 1) {
    //fill(100 + i*10);
    //line(inicialX, inicialY, finalX, finalY);
    luzX=luzX*(1+random(0.5));
    luzY=luzY*(1+random(0.5));
    //line(inicialX, inicialY, finalX, finalY);
  tamX=random(500);
  tamY=tamX;
    image(luz,luzX,luzY,tamX,tamY);
    
    //posicion(x, y), tamano(tamano, tamano)
    //ellipse(100 + i*60, 100, 50, 50); //Cambia X
    //ellipse(100, 100 + i*60, 50, 50); //Cambia Y
  }
  
  rectMode(CORNER);
  fill(255,255,255,25);
  rect(0,0,width,height);
  

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  noStroke();
  fill(elipseCR,elipseCG,elipseCB); //negro 
  ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);


  //Dibujar el Rectangulo
  //posicion esquina superior izquierda (rectPosX, rectPosY)
  rectPosX = mouseX;
  rectPosY = mouseY;
  rectMode(CENTER);
  
  fill(barraCR,barraCG,barraCB);
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;


  //si reboto cambiar la velocidad
  if (rebote() == true) {
    
    
    bolaVelX  = -bolaVelX;
    bolaVelY  = -bolaVelY;
    barraCR=elipseCR;
    barraCG=elipseCG;
    barraCB=elipseCB;
    image(destello,rectPosX-80,rectPosY-80);
    elipseCR=random(255);
    elipseCG=random(255);
    elipseCB=random(255);
    
    
  }

  //Rebotar con las paredes
  if (bolaPosX > width) {
    bolaVelX  = -bolaVelX;

  }

  if (bolaPosY > height) {
    bolaVelY  = -bolaVelY;

  }

  if (bolaPosY < 0) {
    bolaVelY  = -bolaVelY;

  }

  if (bolaPosX < 0) {
    bolaVelX  = -bolaVelX;

  }
}

