
//Arreglos de textos e imágenes 

int bx, by, ban, bal, y;


String[] dialogos = new String[32];  

PImage[] ima = new PImage[17];


int c; 


PFont titulo, texto; 


void setup() {


  size (800, 600); 
  bx=100;//UBIC X 
  by=bx*3;//UBIC Y
  ban=bx*2;//ANCHO
  bal=bx/2;//ALTO
  y=height;

  titulo = loadFont( "ArialMT-24.vlw" );


  reiniciar();  



  //Diálogos: carga manual de los textos sin for, porque son distintos

  dialogos[0] = "Viaje espacial";
  dialogos[1] = "Presione ESPACIO para empezar"; 
  
  dialogos[2] = "(MUS) Estrella su nave en la tierra en un accidente";
  dialogos[3] = " Presione ESPACIO para continuar"; 
  
  dialogos[4] = "Tubo fallas en su nave antes\n de llegar con sus amigos.";
  dialogos[5] = "Presione la c para continuar"; 
  
  dialogos[6] = "Sale afuera para ver su entorno y ve muchas\n luces acercándose con un ruido molesto.";
  dialogos[7] = "Elije con cuidado\n(Haga click en la opción que desee elegir).";  
  dialogos[8] = "Entrar a la nave"; 
  dialogos[9] = "Irse con el equipo";
  
  dialogos[10] = "ORDENADOR HOSTILES ACERCANDOSE \nPONGACE ASALVO";
  dialogos[11] = "Ir a las Montañas";
  dialogos[12] = "Ir al Bosque";
  
  dialogos[13] = "Una gran vista de su nave y los hostiles que se acercaban";
  dialogos[14] = "Pasa la noche en la cueva de la Montaña";
  
  dialogos[15] = "Despierta luego de una larga noche";
  dialogos[16] = "(Haga click en la opción que desee elegir)";
  dialogos[17] = "Esperar por ayuda";
  dialogos[18] = "Salir a explorar";
  dialogos[19] = "Lo ataca un oso y muere";
  dialogos[20] = "Perdiste preciona ESPACIO para volver a empezar";
  dialogos[21] = "Pasas la noche en los arboles y mañana sigues caminando";
  dialogos[22] = "Te  encuentras con un pastisal cerca de la montaña";
  dialogos[23] = "Encuentras una cosecha de maiz";
  dialogos[24] = "Dejas un mensaje para que sus amigos lo vean";
  dialogos[25] = "Esperar la noche";
  dialogos[26] = "Irse a explorar mas";
  dialogos[27] = "Te perdiste y tus amigos no te encontraron.";
  dialogos[28] = "Llegaron por ti lograste sobrevivir.";
  dialogos[29] = "Ganaste sobreviviste presione ESPACIO para volver a empezar.";
  dialogos[30] = "Trabajo Práctico n°4 \n\nTecnología Multimedial 1\n\n Alumno: Denis Becker\n\n Legajo: 85105/5\n\n Comisión: 1 - 8:00 AM\n\n Profesor:\n\n José Luis Bugiolachi\n\n JUEGO:\n\n(MUS)ALIEN VIAJANTE\n\nFDA\n\n2020";
  dialogos[31] = "Precio ESPACIO para vovler a inico";





  //Carga de imágenes con ciclo For, se cambia los nombres de la data

  for ( int i = 0; i < 17; i++ ) {

    if ( i < 10)
      ima[i] = loadImage ( "ima0" + i + ".jpg" );

    else
      ima[i] = loadImage ( "ima" + i + ".jpg" );
  }
}


void draw() {

  textFont ( titulo );
  textFont(titulo, 20);
  textAlign(CENTER);

  // Dibujo de las pantallas

  image( ima[c], 0, 0, 800, 600 );

  // Dibujo botones

  if ( c == 4 || c== 8 || c== 12  ) { // c == cada caso en el que hay botones

    fill(0, 170);//esto
    rect(bx, height-by/6, ban, bal);// botón de "a la izquierda   (codigo izquierda abajo)
    rect(bx*7, height-by/6, ban, bal);//botón de "a la derecha"    (codigo derecha abajo)
  }   
  if (  c == 2 || c == 4 || c == 5 || c== 8 || c== 12   ) { // fill centro
    rectMode(CENTER);
    fill(0, 150);
    rect(width/2, height/2, ban*3, bal*2);//texto
  } 

  //Switch para agrupar varios ifs 

  switch(c) {
  case 0:  
    textSize(60);
    fill(200, 100, 0);
    text(dialogos[0], width/2, height/2);
    fill(255);
    textSize(30);
    text(dialogos[1], width/2, height/2+bal*4+60);
    break; 


  case 1: 
    textSize(20);
    fill(255);
    text(dialogos[2], width/2, height/2+5);
    text(dialogos[3], width/2, height/2*2-40);
    break; 
  case 2: 
    fill(255);
    text(dialogos[4], width/2, height/2+5);
    text(dialogos[3], width/2, height/2*2-40);
    break; 

  case 3: 

    fill(255);
    text(dialogos[6], width/2, height/2+5);
    text(dialogos[3], width/2, height/2*2-40);
    break;  

  case 4: 
    fill(255);
    text(dialogos[7], width/2, height/2+5);
    text(dialogos[8], bx, height-bal+5); // xxxxxxxxxxxxxxxxxxxx   (código izqueirda abajo)
    text(dialogos[9], bx*7, height-bal+5 ); // xxxxxxxxxxxxxxxxxxxx   (codigo derecha abajo)
    break;  
  case 5: 
    fill(0, 170);//esto
    rect(bx, height-by/2, ban, bal);// xxxxxxxxxxxxxxxxxxxx   (código izqueirda arriba)
    rect(bx*7, height-by/2, ban, bal);// xxxxxxxxxxxxxxxxxxxx   (codigo derecha arriba)
    fill(255);
    text(dialogos[10], width/2, height/2-15);
    text(dialogos[11], bx, height-bal*2.8);//CAMINO 1
    text(dialogos[12], bx*7, height-bal*2.8);//CAMINO 2 

    break;  

  case 6: 
    text(dialogos[13], width/2, height/2);
    text(dialogos[3], width/2, height-bal/2);
    break;

  case 7: 
    text(dialogos[14], width/2, height/2);
    text(dialogos[3], width/2, height-bal/2);

    break;

  case 8: 
    fill(255);
    text(dialogos[15], width/2, height/2+5);
    text(dialogos[16], width/2, height/2+by/3);
    text(dialogos[17], bx, height-bal+5);//CAMINO 1
    text(dialogos[18], bx*7, height-bal+5);//CAMINO 2
    break;

  case 9: 
    text(dialogos[19], width/2, height/2+5); 
    text(dialogos[20], width/2, height/2*2-40);
    break;

  case 10: 
    fill(255);
    text(dialogos[21], width/2, height/2+5);
    text(dialogos[3], width/2, height/2*2-40);
    break;

  case 11: 
    text(dialogos[23], width/2, height/2+5);
    text(dialogos[3], width/2, height/2*2-40); // opcion c
    break;

  case 16: 
    text(dialogos[22], width/2, height/2+5);
    text(dialogos[5], width/2, height/2*2-40); // opcion c
    break;

  case 12:
    fill(255);
    text(dialogos[24], width/2, height/2+5);
    text(dialogos[25], bx, height-bal+5);
    text(dialogos[26], bx*7, height-bal+5 );
    break;
    //FINAL
  case 13: 
    text(dialogos[28], width/2, height/2+5);
    text(dialogos[29], width/2, height/2*2-40); // opcion espacio
    break;
    //FINAL
  case 14: 
    text(dialogos[27], width/2, height/2+5);
    text(dialogos[20], width/2, height/2*2-40); // opcion espacio
    break;
//CREDITOS
  case 15:  
    text(dialogos[31], width/2, height/2*2-40); // opcion espacio
    textSize(60);
    fill(200, 100, 0);

    text(dialogos[30], width/2, y+50);
    y-=3;
    break;
  }

  
}


void keyPressed() { 
  
  
  if ( c == 16 && key == 'c') {
    // Cambiar de pantalla con la barra espaciadora
    c = 7;
  } 
  else if ( c == 0 && key == 'c') {
    // Cambiar de pantalla con la barra espaciadora
    c = 15;
  }
  if (
    c != 4  && c != 12 &&  c != 8 &&  c != 9 &&  c != 13 && c != 5 &&  c != 14 &&  c != 16 && c != 15 &&key == ' ' ) { // Para frenar el espacio y imagen siguente
   
    c ++;
  } else if ( c == 9 || c == 13  || c == 14 && key == ' ' ) { //para elegir estado 
    c = 0;
  } else if ( c == 9  ||  c == 15  && key == ' ' ) // Para resetear leugo de precionar espacio

    reiniciar(); 

 
}


void mousePressed() {

  // Interactividad con mouse

  if ( c == 4 ) {
    //izquierda abajo
    if (mouseX>0&&mouseX<200&&mouseY>525&&mouseY<600)
      c = 5; 

    // izqueirda abajo
    //irse con el equipoo
    if (mouseX>600&&mouseX<800&&mouseY>525&&mouseY<575 )
      c = 16;
  }
  if ( c == 8 ) {
    //izquierda abajo
    if (mouseX>0&&mouseX<200&&mouseY>525&&mouseY<600)
      c = 9; 
    // izqueirda abajo
    //irse con el equipoo
    if (mouseX>600&&mouseX<800&&mouseY>525&&mouseY<575 )
      c = 11;
  }
  if ( c == 12 ) {
    //izquierda abajo
    if (mouseX>0&&mouseX<200&&mouseY>525&&mouseY<600)
      c = 13; 
    // izqueirda abajo
    //irse con el equipoo
    if (mouseX>600&&mouseX<800&&mouseY>525&&mouseY<575 )
      c = 14;
  } 
  if ( c == 5 ) {
    //izquierda ariba
    if (mouseX>0&&mouseX<200&&mouseY>425&&mouseY<475)
      c = 6; 
    // izqueirda ariba
    //irse con el equipoo
    if (mouseX>600&&mouseX<800&&mouseY>425&&mouseY<475 )
      c = 10;
  }
}


// Función para que comience la música al reiniciar el juego 

void reiniciar() {

  c = 0;
}
