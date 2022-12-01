/*
 Padle_Pong
 Realizado por Alejandro Pérez Aranda
 Sistemas Integrados y Hogar Digital
*/

//Establezco las variables antes de comenzar con "VOID".
      int x;
      int y;
      int reboteX;
      int reboteY;
      int Yb1;         // Valor de Y de la barra lateral 1.
      int Yb2;         // Valor de Y de la barra lateral 2.
      
      boolean w,s, a, b;



void setup(){
  size (690, 600);
  x= 100;
  y= 100;
  reboteX= 3;
  reboteY= 3;
  
}



void draw(){
  background(57, 57, 85);
  noStroke();
  fill(255, 255, 255);
  ellipse(x, y, 40, 40);       // Tamaño de la pelota central.
  fill(155, 28, 37);
  rect(10, Yb1, 30, 180);      // Rectangulo de la Izquierda.
  fill(236, 237, 62);
  rect(width -40 , Yb2, 30, 180);    // Rectangulo de la Derecha.
  
  x= x + reboteX;
  y= y + reboteY;
  
  if (x<40 && y> Yb1 && y<Yb1 + 180){
    reboteX= reboteX*-1;
  }
  if (x>width -40 && y> Yb2 && y<Yb2 + 180){
    reboteX= reboteX*-1;
  }
  
  if (x > width || x < 0){
    reboteX= reboteX*-1;
  }
  
  if (y > height || y < 0){
    reboteY= reboteY*-1;
  }
  
  
  if(w) {
    Yb1= Yb1 -3;
  }
  if(s) {
    Yb1= Yb1 +3;
  }
  if(a) {
    Yb2= Yb2 - 3;
  }
  if(b) {
    Yb2= Yb2 + 3;
  }
  
  
  
  
  
  textSize(50);
  textAlign(CENTER);
}



void keyPressed(){

if (key== 's'){
    s= true;
  }
  
  
  if (key== 'w'){
    w= true;
  }
  
  if (keyCode== UP){
    a= true;
  }
  
  if (keyCode== DOWN){
    b= true;
  }
 
}



void keyReleased(){
  if (key== 's'){
    s= false;
  }
  
  if (key== 'w'){
    w= false;
  }
  
  if (keyCode== UP){
    a= false;
  }
  
  if (keyCode== DOWN){
    b= false;
  }
  
}
