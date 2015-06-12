float incremento=10;
float colorR=0;
float colorG=0;
float colorB=0;

void setup(){
size (500,500);

}

void draw(){
background(0);
colorR=random(255);
colorG=random(255);
colorB=random(255);
stroke(colorR,colorG,colorB);
for(int i=0; i<50; i++){
line(100,50+(i*incremento),100+(mouseX-100),50+(i*incremento)+(mouseY-100));
colorR=colorR+incremento;
colorG=colorG+incremento;
colorB=colorB+incremento;

incremento=incremento+1;

if (incremento>100){
incremento=0;


}


}

}
