
// Inicia valores, es como el load, carga archivos, audio, etc.

void setup()
{
  size(500, 500);
  
}

//Dibuja, reproduce un audio previamente cargado, etc.

void draw()
{
  background(0,0,0); //Los colores spueden definirse en RGB (va de 0 a 250) o Hexadecimal comunmete.
  fill(0,1,255); //Es paradibujar el relleno de una figura, tiene un 4to valor que representa la transparencia igualmente va de 0 a 255 o con la funcion no fill
  stroke(255,255,255); //Es para dibujar solo el contorno de una figura
  ellipse(250,250,50,50); //Es para dibujar una figura de un elipse, las 2 primeras coordenadas son el centro de la elipse, y las dos siguientes el largo y alto de la elipse.
  rect (300,300,50,100);
  line(350,400,500,500);
//otrasdos funciones antagonicas al fill ystroke son noStroke y noFill.

}

