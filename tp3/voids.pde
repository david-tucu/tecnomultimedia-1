  void vida() {
    if (vida==3) {
      image(gatitos[0], 15, 5, 50, 20);
    } 
    if (vida==2) {
      image(gatitos[1], 15, 5, 50, 20);
    }
    if (vida==1) {
      image(gatitos[2], 15, 5, 50, 20);
    }
    if (vida==0) {
      estado=3;
    }
 }

  void velocidad() {
    if (p>=3 &&p<=6) {
      despMy+=4;
    }
    if (p>=7 &&p<=15) {
      despMy+=6;
    }
    if (p>=16 &&p<=25) {
      despMy+=8;
    }
    if (p>25 ) {
      despMy+=9;
    }
  }

  void fondo(String texto, int px, int py, int tam) {
      textSize(tam);
     textAlign(CENTER);
      fill(0);
      text(texto, px, py);
  } 
