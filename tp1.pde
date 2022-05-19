//Trabajo Práctico n°1. Animando con Processing
//Profesor: David Bedoian
//Alumna: Aguirrezabala Melina. Legajo 88260/6
//Créditos película "Irreversible". Gaspar Noe


PImage titulo, cierre; 
int py,px, px1, py1, py2, py3, py4, py5, py6;
PFont fuente;
String protagonistas, protagonists, musica, direccion, produccion, guion;


void setup () {
  size (600,600);
  titulo = loadImage ("Irreversible.png"); 
  cierre = loadImage ("irreversible el tiempo destruye todo.jpg");
  protagonistas = "       PERSONAJES PRINCIPALES: \n                        ALEX \n                       PIERR \n                     MARCUS";
  protagonists = "       PERSONAJES SECUNDARIOS: \n                     LA TENIA \n                     MOURAD \n                       LAYDE \n                     CONCHA \n                    L´HOMME";
  musica = "                    MÚSICA: \n           THOMAS BANGALTER";
  direccion = "                  DIRECCIÓN: \n                 GASPAR NOÉ ";
  produccion = "                 PRODUCCIÓN: \n               BRAHIM CHIOVA \n               VINCENT CASSEL";
  guion = "                     GUIÓN: \n                 GASPAR NOÉ";
  fuente = loadFont ("FranklinGothic-Heavy-36.vlw");
  textSize (12);
  py= 700;
  py1 = 700;
  px = 700;
  px1= 0;
  py2 = 700;
  py3= 700;
  py4 = 700;
  py5 = 700;
  py6 = 700;
  
     
}
void draw (){
  // Titulo
  background (0);
  image (titulo, px, 0, 200, 600);
  px --;
  if (px<= 0){
  //Protagonistas Principales
  textFont (fuente);
  text (protagonistas, 0, py);
    textAlign (LEFT);
  py --;
  } if (py <= 400){
   //Protagonistas Secundarios
   textFont (fuente);
   text (protagonists, 0, py1);
    py1 --;
  } if (py1 <= 300) {
    // Música
    textFont (fuente);
   text (musica, 0, py2);
    py2 --;
  } if (py2 <= 400){
    //Dirección
    textFont (fuente);
   text (direccion, 0, py3);
    py3 --;
  } if (py3 <= 400){
    //Producción
    textFont (fuente);
   text (produccion, 0, py4);
    py4 --;
  } if (py4 <= 400){
    //Guión
    textFont (fuente);
   text (guion, 0, py5);
    py5 --;
  }
   //cierre
  if (py5 <= 0){
     background (0);
  image (cierre, py6, 0);
  py6 --;  
  
  }
  println (mouseX, mouseY);  
}
