int n=0;
float posX=0;
float posY=100;
float colorElipseR=0;
float colorElipseG=0;
float colorElipseB=0;
float velocidadX=2.5;
float velocidadY=2.5;


void setup() {
  size (1024, 768);
}


void draw() {

  fill(255, 255, 255, 10); //RGB y Alpha

  rect(0, 0, width, height); //las palabras en rosa, quieren decir que se refiere al ancho y alto de nuestra pantalla

  stroke(colorElipseR, colorElipseG, colorElipseB);
  fill(colorElipseR, colorElipseG, colorElipseB);
  ellipse(posX, posY, 50, 50);

  posX=posX+velocidadX;
  posY=posY+velocidadY;

  if (posX>width) {
    velocidadX=(velocidadX*-1);
    colorElipseR=random(255);
    colorElipseG=random(255);
    colorElipseB=random(255);
  }

  if (posX<0) {
    velocidadX=(velocidadX*-1);
    colorElipseR=random(255);
    colorElipseG=random(255);
    colorElipseB=random(255);
  }

  if (posY<0) {
    velocidadY=(velocidadY*-1);
    colorElipseR=random(255);
    colorElipseG=random(255);
    colorElipseB=random(255);
  }

  if (posY>height) {
    velocidadY=(velocidadY*-1);
    colorElipseR=random(255);
    colorElipseG=random(255);
    colorElipseB=random(255);
  }

  n=n+1;
  println(n);
}

void keyPressed() {
//Esta es la barra de espacio)
if(key==' '){
background(255);
}
  if (key=='a') {
    velocidadX=velocidadX*-1;
    velocidadY=velocidadY*-1;
    
  }
  
  if(key=='s'){
  save("imagen001.png");
  }
}

