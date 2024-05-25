//Morales Alfonisna COM3 
PImage imagen1; //pantalla 1
PImage imagen2; //pantalla 2
PImage imagen3; //pantalla 2
PImage imagen4; // pantalla 3
PImage imagen5; //pantalla3
PImage imagen6; //final
PImage imagen7; //click

PFont letra;

String titulo1; //pantalla 1
String texto1; // pantalla 1
String titulo2; //pantalla 2
String texto2; //pantalla 2
String texto3; // pantalla 3

float opacidad=0;
float posX;
float posY;

int contador;

void setup() {
size(640,480);
background(255);
noStroke();

contador = 0 ;

imagen1 = loadImage("naturaleza1.jpg");
letra = loadFont("gentium.vlw");
titulo1 = "Jennifer Steinkamp \n Naturaleza Digital"; //pantalla 1
texto1 =  "Creada en Febrero \n del 2018 \n Madrid España";
imagen2 = loadImage("naturaleza2.jpg");
texto2 = "Pionera en el uso de la animación digital, \n el trabajo de Jennifer Steinkamp se centra \n desde hace tres décadas en explorar \n temas vinculados con la percepción el movimiento \n y el espacio.";//pantalla2
titulo2 = "Quien es ella ?"; //pantalla 2
imagen3 = loadImage("naturaleza3.jpg"); //pantalla 2
imagen4 = loadImage("naturaleza4.jpg"); //pantalla 3
texto3 = "En esta serie de cinco videoinstalaciones se emplean imágenes tridimensionales creadas \n por ordenador que desmaterializan \n los muros, puertas y ventanas de la sala, para recrear la naturaleza de manera artificial.\n El resultado es un lugar artificial y sugerente, diseñado para reflexionar,\n explorar y encontrar inspiración.";
imagen5 = loadImage("naturaleza5.jpg"); //pantalla 3
imagen6 = loadImage("final.jpg"); //final
imagen7 = loadImage("naturaleza7.jpg"); // click

contador = 0;
posX = 200;
posY = -20;

}


void draw() {
  contador ++; 
  if(contador <=300) { 
  fill(255);
  rect(0,0,640,480);
  image(imagen1,350,0,290,480);
  textFont(letra);
  fill(209,255,212,opacidad);
  textSize(35);
  textAlign(CENTER);
  textSize(map(opacidad,0,255,35,35));
  text(titulo1,185,200);
  text(texto1,185,320);
  textSize(map(opacidad,0,255,15,15));
  
  opacidad+=2;
  
  }
  
 else if((contador >300) && (contador <=600)){
   contador++;
   fill(255);
    rect(0,0,640,480); 
    image(imagen2,320,10,330,145);
    textFont(letra);
    fill(231,198,255,opacidad);
    textSize(45);
    textAlign(LEFT);
    textSize(map(opacidad,0,255,35,35));
    text(titulo2,40,90);
    textSize(25);
    fill(0,opacidad);
    text(texto2,35,189);
    textSize(map(opacidad,0,255,15,15));
    image(imagen3,250,300,230,140);
    opacidad+=2;
 }
  else if (contador >600 && contador >=900){ //pantalla 3
  contador++;
  fill(255);
  rect(0,0,640,480);
  image(imagen4,320,10,330,145);
  textFont(letra);
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(texto3,320,180,170);
  image(imagen5,10,10,300,150);
  image(imagen6,220,330,240,140);

  }
  
  else if (contador>1100 && contador <=1300){
contador++;
rect(0,0,640,480);
fill(255);
     
   
  }
}
void mousePressed(){
  if (contador>1300){
    contador=0;
    opacidad=0;
    posX = -200;
    posY = -20;
    
contador = 0 ;

  }
}

   

 
