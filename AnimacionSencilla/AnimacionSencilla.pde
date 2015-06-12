float posicionX=100; //Valores con decimales.
float velocidad=25;
int col=0;//Valores enteros.
int col2=255;
int tam=20;
void setup(){

  size(400,400);
//El draw funciona como un loop infinito.
//Como las variables son globales se genera una animación.
  
}

void draw(){

  
background(col,col,col);
noStroke();
fill(col2,col2,col2);
ellipse(posicionX,200,tam,50);
ellipse(posicionX,250,50,50);
posicionX=posicionX+(velocidad)*0.3;
col=col+1;
col2=col2-1;
tam=tam+10;
println(tam); //es para imprimir los valores de una variable en la consola negra de abajo.
if (posicionX > 400){
  posicionX = 0;
}

}
