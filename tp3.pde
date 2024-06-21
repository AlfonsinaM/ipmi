//Morales ALfonsina COM3
// https://youtu.be/AStYpRSx9Ao
PImage imagen ; //obra
int diamondSize = 50; //tamaño de los diamantes
int colorA = 0; // color negro
int colorB = 255; // collor blanco
int tileSize = 100; //tamaño de cada cuadro del ajedrez

void setup() {
  size(800, 400);
  background(255); //fondo 
  frameRate(1); //  velocidad de la animación
  imagen = loadImage("programacion.jpeg");  //imagen
}

void draw() {
  background(225);
  
  //  patrón de ajedrez como fondo
   for (int y = 0; y < height; y += tileSize) { 
    for (int x = 0; x < width; x += tileSize) {
      if ((x / tileSize + y / tileSize) % 2 == 0) { //cambia los colores de los cuadrdaos segun la posicion
        fill(colorA); // color negro
      } else {
        fill(colorB); // color blanco
      }
      rect(x, y, tileSize, tileSize);
    }
   }
   
   //diamantes arriba del patrón de ajedrez
   for (int y = 0; y < height; y += diamondSize * 2) {
    for (int x = 0; x < width; x += diamondSize * 2) {
      int posX = x + diamondSize;
      int posY = y + diamondSize;
      drawDiamond(posX, posY, diamondSize, colorA);
    }
   }
   
   // intercambiar los colores para el efecto de animación
   int tempColor = colorA;
   colorA = colorB;
   colorB = tempColor;
 
   image(imagen,0,0,400,400); //imagen obra
}
//animacion diamantes de arriba 
void drawDiamond(int x, int y, int size, int fillColor) {
  fill(fillColor);
  noStroke();
  beginShape();
  vertex(x - size / 2, y);  //coordenadas para formar los diamantes 
   
    
     
     
  vertex(x, y - size / 2);
  vertex(x + size / 2, y);
  vertex(x, y + size / 2);
  
  endShape(CLOSE);
}
