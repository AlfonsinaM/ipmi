PImage autoretrato;
void setup(){
  size(800,400);
  background(255);
  autoretrato= loadImage ("autoretrato1.jpg");
  
}
void draw(){
  image(autoretrato,0,0,400,800);
  println(mouseX + " / " + mouseY);
  noStroke(); 
   fill(161,185,181);  //colordel dibujo
  ellipse(570,210,140,240); //forma principal cara 
  fill(244,250,202); //color boca
  ellipse(566,260,137,49); //boca
  fill(116,133,134); //color para el borde de los ojos
  rect(507,120,130,100,50); //visor de ojos
  fill(5,5,5); //color negro 
ellipse(571,170,125,85); //fondo de los ojos
fill(243,250,202); //color amarillito
  ellipse(545,171,50,50); //ojo 1
  ellipse(598,171,50,50); //ojo 2
  fill(5,5,5); //color negro
  rect(538,171,10,10); //iris 1
  rect(598,171,10,10); //iris 2
  rect(497,265,135,4); // linea de boca 
  rect(526,235,4,50); //linea vertical boca
  rect(565,235,4,50); //linea vertical 2 boca
  rect(595,236,4,50); //linea vertical 3 boca
  fill(161,185,181); //color gris
 rect(566,30,9,60); //antena 
 
}
