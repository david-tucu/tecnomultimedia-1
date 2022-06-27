//Trabajo Práctico n°2. Ilusión óptica interactiva.
//Profesor: David Bedoian
//Alumna: Aguirrezabala Melina. Legajo 88260/6


int cant = 10;
void setup(){
  size (800,600);
  }

void draw(){
  background (0);
  stroke (0);
  fill (0);
  rect (200,150,400,300);
  fill (255,0,0);
  quad(0,0,200,150,600,150,800,0);
  fill (0,255,0);
  quad (0,0,200,150,200,450,0,600);
  fill (0,0,255);
  quad (800,0,600,150,600,450,800,600);
  fill (255,255,0);
  quad (0,600,200,450,600,450,800,600);
  noFill();
for (int c= 0; c<cant; c++) { 
    float tam = map(c, 0, cant-1,width , 20);
    float posx = map(c, 400, cant-1, CENTER, mouseX  );
    float posy = map(c, 300, cant-1, CENTER, mouseY  );
    float grosor = map(c, 0, cant-1, 20, 5  );
    strokeWeight(grosor);
    if (c%2==0) {
        stroke(255);
      
    } else {
      stroke(0);
    }
     if (mousePressed){
      if (c%2==0){
      stroke (0);
    }
    else {
     stroke (0,255,255);
    }
}
    ellipse(posx, posy, tam, tam);
  }
}
