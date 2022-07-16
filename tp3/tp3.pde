//Trabajo Práctico n°3. Juego interactivo libre.
//Profesor: David Bedoian
//Alumna: Aguirrezabala Melina. Legajo 88260/6
// https://youtu.be/g3buv4j-pAA

//------------------------------------------------------

PFont tipografia;
int p = 0;
PImage [] gatito =new PImage [2];
PImage [] gatitos =new PImage [4];
PImage canasta, reiniciar, cerrar, fondo;
float moCanastaX, moCanastaY, despMx, despMy;
int estado, punto, vida;
boolean pCount = true;
String [] textos = {"Jugar", "Instrucciones", 
  "\n Debes mover la canasta con el mouse \n e intentar de atrapar la mayor cantidad \n de gatitos para poder ganar \n \n Perderás en caso de que \n 3 gatitos caigan \n \n \n ¿Podrás lograrlo?",
  "Ganaste", "Puntuación : ", "Puntaje : "};


void setup() {
  size(600, 500);
  vida=3;
  tipografia= loadFont("AgencyFB-Reg-48.vlw");
  textFont(tipografia, 25);
  canasta=loadImage("canasta.png");
  cerrar=loadImage("cerrar.png");
  fondo=loadImage("fondo.jpg");
  reiniciar =loadImage("reiniciar.png");
  for (int i=0; i<2; i++) {
    gatito[i]=loadImage("gatito" +i+".png");
  }
  for (int i=0; i<4; i++) {
    gatitos[i]=loadImage("gatitos" +i+".png");
  }
}


void draw() {  
    background(210,145,255);
  if (despMy > height) {
    despMy= 0;   
    despMx = int(random(width - 5)); 
    pCount = true;
  }

  if (estado==0) {    // Pantalla de inicio    
    image(gatito[0], 10, 150, 170, 170);
    image(gatito[1], 470, 50, 130, 400);
    image(canasta, 100, 300, 190, 170);
    image(canasta, 300, 20, 90, 70);
    image(canasta, 350, 350, 55, 35);
    image(canasta, 20, 50, 55, 35);
    fill(155, 5, 255);
    rect(150, 100, 300, 90, 15);
    fondo(textos[0], 300, 160, 50 );
    fill(155, 5, 255);
    rect(150, 200, 300, 90, 15);
    fondo(textos[1], 300, 260, 40 );
    } 
    
    else if (estado==1) {  //Juego iniciado
    image(fondo, 0, 0, width, height);
    despMy+=2;
    moCanastaX = mouseX;
    moCanastaY = height-100;
    fondo(textos[5]+p, 46, 45, 18 );
    velocidad();
    vida();
    
    if  (despMy>500) {
      vida -=1;
      
      image(gatitos[1], 10, 5, 200, 200);
       pCount = true;
      
    }
    image(gatito[0], despMx, despMy, 100, 100);
    fill(255);
    rect(0, 480, 600, 20);
    image(canasta, moCanastaX, moCanastaY, 100, 110);

    if (despMy +10 >moCanastaY && despMy -10< moCanastaY+20) {
      if (despMx  +10 >moCanastaX && despMx-10<moCanastaX +20) {
        despMx =random(0, 600);
        despMy=0;
        pCount = true;
        image(gatito[0], despMx, despMy, 50, 50);

        if (pCount) p = p + 1;
        pCount = false;
      }
    }

    if (despMy >=height) {
      despMx =random(0, 600);
      image(gatito[0], despMx, despMy, 50, 50);
      }
    } 
    
    else if (estado==2) {    //Instrucciones del juego
    fondo(textos[2], 300, 100, 30 );
    fill(255);
    rect(270, 440, 50, 50,5);
    image(cerrar, 276, 446, 40, 40);
    }
    
    else if (estado==3) {    //Puntuación final
    fondo(textos[4]+p, width/2, 300, 50 );
    fill(255);
    rect(240, 444, 50, 50,5);
    rect(310, 444, 50, 50,5);
    image(reiniciar, 247, 449, 35, 35);
    image(cerrar, 316, 450, 40, 40);
    image(gatitos[3], 250,150 , 100, 50);
    
  }
}
     void mousePressed() {
      if (mouseX>150 && mouseX <450 && mouseY > 100 && mouseY< 190) { // jugar 
        estado=1;
       
      }
      if (mouseX>150 && mouseX <450 && mouseY > 200 && mouseY< 290) { //instruciones
        estado=2;
      }
      if (mouseX>240 && mouseX <290 && mouseY > 444 && mouseY< 494) { //reiniciar
        estado=1;
        vida=3;
        p=0;
      }
      if (mouseX>310 && mouseX <365 && mouseY > 444 && mouseY< 494) { //volver a pantalla principal 
        estado=0;
      }
      if (mouseX>270 && mouseX <320 && mouseY>440 && mouseY <490){ // volver a pantalla principal
        estado =0;
        vida=3;
        p=0;
      }
    }
