//Melina Aguirrezabala. Tecnología Multimedia 1. Legajo 88260/6.


void setup(){
  size (400,400);
  background (0,0,200);  
  
  
}


void draw (){
  noStroke();
  fill(255);
  fill(128,64,0);
  ellipse(width/2,110,100,100); //pelo
  ellipse(235,70,40,40); //pelo
  fill(253,221,202);
  rect(150,100,100,100,20); //cabeza
  fill(253,221,202);
  rect(190,200,20,30); //cuello
  fill(0,200,0);
  rect(125,230,150,200,15); //cuerpo
  fill(0);
  ellipse( 180,135,10,10);  //ojo 
  ellipse(220,135,10,10);  //ojo
  fill(255,0,0,40);
  ellipse(200,155,5,5);  //nariz
  fill(253,221,202);
  triangle(190,230,210,230,200,245); //escote remera
  ellipse(150,140,15,15);  //oreja
  ellipse(250,140,15,15);  //oreja
  fill(200,0,0,50);
  ellipse(170,165,20,20); //pomulo
  ellipse(230,165,20,20); //pomulo
  stroke(0);
  fill(0);
  line(190,180,210,180); //sonrisa
  line(187,177,190,180); //sonrisa
  line(213,177,210,180); //sonrisa
  textSize(20);
  text("    Melina \nAguirrezabala",133,300); //nombre
    
}
