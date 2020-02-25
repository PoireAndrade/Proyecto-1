PFont font; // *********** font
int x,y1=900; 
int tf=30,cf; 
int tl=0; 

int P=1,J1,J2,turno=0;
float ataque1,ataque2,vida1,vida2;
float s1,s2,s3,s4,s5;
int cc; //cambia color de fondo en pantalla 3


class peleador{
  
  int x,y;
  String nombre;
  int ataque,vida;
  int posicion; //Numero de selección para enlazarlos en switch
  
  peleador(String nombre, int ataque, int vida, int posicion){
    
    nombre = nombre;
    ataque = ataque;
    vida = vida;
    posicion = posicion;
  }

  void seleccion(){
    switch(posicion){
      case 1:
        sopaM();
      break;
      
      case 2:
        lata();
      break;
      
      case 3:
        plato();
      break;
      
      case 4:
        vaso();
      break;
      
      case 5:
        colilla();
      break;
    }
    
  }
}
peleador sopaM;
peleador lata;
peleador plato;
peleador vaso;
peleador colilla;

void setup(){
  frameRate(60);
  size(900,500);

      
  font = loadFont("CabinSketch-Bold-48.vlw"); // *****font l1 *****
   textFont(font);
              //personaje(String nombre, int ataque, int vida, int posicion)
  sopaM = new peleador("sopaM",3,50,1);  
  lata = new peleador("lata",4,40,2);
  plato = new peleador("plato",3,45,3);
  vaso = new peleador("vaso",3,45,4);
  colilla = new peleador("colilla",2,50,5);
}

void draw(){
  
  println(mouseX, mouseY);
  
  if(P==1){
  pantalla1();
    if (mousePressed && mouseX>378 && mouseX<478 && mouseY>330 && mouseY<380){
      P=2;
    }
  }
  
  if(P==2){
    pantalla2();
    if(J1!=0 && J2!=0){   //linea 2
      P=3;
    }
  }
  
  if(P==3){
    pantalla3();
  }
  
  if(P==4){
    pantalla4();
  }
}
//****************************P A N T A L L A 1*****************************
void pantalla1(){
  fill(5,25);
  rect(0,0,width,height);
    
  
  textFont(font);  // ****************** FONT *************
  textAlign(CENTER, BOTTOM);
  textSize(100);
  fill(255);
    text("HISTORIA DE \nUNA RECAMARA",x,300);
  if(x<=450){
    x=x+7;
  }
  
  fill(cf);
  textSize(tf);
  text("PELEA!",450,y1);
  if(y1>=380){
    y1=y1-6;
  }

 
  if(mouseX>378 && mouseX<478 && mouseY>330 && mouseY<380){
    tf=40;
    cf=255;
  }
    else{
      tf=30;
      cf=200;
    }
  }

//****************************P A N T A L L A 2*****************************

void select1(){
  if (P==2){
    if (mousePressed && mouseX>300 && mouseX<600 && mouseY>0 && mouseY<250){ 
      //sopaM
        J1 = 1;
        vida1 =50;
        ataque1 = random(3);
    }
    if (mousePressed && mouseX>600 && mouseX<900 && mouseY>0 && mouseY<250){ 
      //lata
        J1 = 2;
        vida1 = 40;
        ataque1 = random(4);
    }
    if (mousePressed && mouseX>0 && mouseX<300 && mouseY>250 && mouseY<500){ 
      //plato
        J1 = 3;
        vida1 = 45;
        ataque1 = random(3);
    }
    if (mousePressed && mouseX>300 && mouseX<600 && mouseY>250 && mouseY<500){ 
      //vaso
        J1 = 4;
        vida1 = 45;
        ataque1 = random(3);
    }
    if (mousePressed && mouseX>600 && mouseX<900 && mouseY>250 && mouseY<500){ 
      //colilla
        J1 = 5;
        vida1 = 50;
        ataque1 = random(2);
    }
  }
}

void select2(){
  if (P==2){
    if (keyPressed){
      if(key=='1'){
        //sopaM
        J2 = 1;
        vida2 = 50;
        ataque2 = random(3);
      }
      if(key=='2'){
       //lata 
        J2 = 2;
        vida2 = 40;
        ataque2 = random(4);
      }
      if(key=='3'){
        //plato
        J2 = 3;
        vida2 = 45;
        ataque2 = random(3);
      }
      if(key=='4'){
        //vaso
        J2 = 4;
        vida2 = 45;
        ataque2 = random(3);
      }
      if(key=='5'){
        //colilla
        J2 = 5;
        vida2 = 50;
        ataque2 = random(2);
      }
    }
  }
}

void pantalla2(){
  fill(50,100); //********************COLOR
  rect(0,0,width,height);
  
  textFont(font);
  textAlign(RIGHT, UP);
  textSize(30);
  fill(255);
  text("¿QUIEN SE QUEDA?",280,50);
  
  textAlign(RIGHT,TOP);
  textSize(28);
  fill(255);
  text("EN1:Seleccion con mouse  \n  EN2:Seleccion con numero ",340,70);
 
  textAlign(CENTER,TOP);
  textSize(50);
  text("1",450,200);
  text("2",750,220);
  text("3",150,450);
  text("4",450,450);
  text("5",750,450);
  
  pushMatrix();
  scale(s1);
  translate(510,30);
  sopaM();
  popMatrix();
  
  pushMatrix();
  scale(s2);
  translate(880,50);
  lata();
  popMatrix();
  
  pushMatrix();
  scale(s3);
  translate(-50,350);
  plato();
  popMatrix();
  
  pushMatrix();
  scale(s4);
  translate(510,320);
  vaso();
  popMatrix();
  
  pushMatrix();
  scale(s5);
  translate(880,400);
  colilla();
  popMatrix();
  
  if(mouseX>300 && mouseX<600 && mouseY>0 && mouseY<250){
    s1=.8;
  }
  else{
    s1=.75;    
  }
  
  if(mouseX>600 && mouseX<900 && mouseY>0 && mouseY<250){
    s2=.8;
  }
  else{
    s2=.75;    
  }
  
  if(mouseX>0 && mouseX<300 && mouseY>250 && mouseY<500){
    s3=.8;
  }
  else{
    s3=.75;    
  }
  
  if(mouseX>300 && mouseX<600 && mouseY>250 && mouseY<500){
    s4=.8;
  }
  else{
    s4=.75;    
  }
  
  if(mouseX>600 && mouseX<900 && mouseY>250 && mouseY<500){
    s5=.8;
  }
  else{
    s5=.75;    
  }
  
  select1();
  select2();
  
}

//****************************P A N T A L L A 3*****************************

void pantalla3(){

  fill(50,100);
  rect(0,0,width,height);
  fill(244,55,33);
  textAlign(CENTER,CENTER);
  textSize(100);
  text("VS",450,75);
  
  //Peleador 1
  if(J1==1){
  pushMatrix();
  translate(50,100);
  sopaM();
  popMatrix();
  }
  if(J1==2){
  pushMatrix();
  translate(50,100);
  lata();
  popMatrix();
    
  }
  if(J1==3){
  pushMatrix();
  translate(-150,100);
  plato();
  popMatrix();
  }
  if(J1==4){
  pushMatrix();
  translate(50,100);
  vaso();
  popMatrix();
  }
  if(J1==5){
  pushMatrix();
  translate(50,100);
  colilla();
  popMatrix();
  }
  
  //Peleador 2
  if(J2==1){
  pushMatrix();
  translate(525,100);
  sopaM();
  popMatrix();
  }
  if(J2==2){
  pushMatrix();
  translate(525,100);
  lata();
  popMatrix();
  }
  if(J2==3){
  pushMatrix();
  translate(525,100);
  plato();
  popMatrix();
  }
  if(J2==4){
  pushMatrix();
  translate(525,100);
  vaso();
  popMatrix();
  }
  if(J2==5){
  pushMatrix();
  translate(525,100);
  colilla();
  popMatrix();
  }
  
  //Pelea. Turno 0=J1
  if(turno==0 && keyPressed){
    if (key=='d'){
      vida2 = vida2 - ataque1;
      turno=1;
    }
  }
  
  if(turno==1 && keyPressed){
    if (key=='l'){
      vida1 = vida1 - ataque2;
      turno=0;
    }
  }
  
  //Mostrar Vida
  fill(136,255,103);
  textSize(50);
  text(vida2,162,375);
  text(vida1,620,375);
  textSize(25);
  fill(200);
  text("\nATAQUE CON: L",162,400);
  text("\nATAQUE CON: D",620,400);
  
  if(vida1<=0 || vida2<=0){
    P=4;
  }
}
//****************************P A N T A L L A 4*****************************

void pantalla4(){
  fill(255,10);
  rect(0,0,width,height);
  textAlign(CENTER,CENTER);
  textSize(tl);
  
  if(vida2<=0){
    fill(0);  
    text("GANADOR \nPELEADOR \n 2", 400,175);
    if(tl<=55){
      tl+=5;
    }
      //Peleador 1
  if(J1==1){
  pushMatrix();
  translate(50,100);
  sopaM();
  popMatrix();
  }
  if(J1==2){
  pushMatrix();
  translate(50,100);
  lata();
  popMatrix();
    
  }
  if(J1==3){
  pushMatrix();
  translate(-180,100);
  plato();
  popMatrix();
  }
  if(J1==4){
  pushMatrix();
  translate(50,100);
  vaso();
  popMatrix();
  }
  if(J1==5){
  pushMatrix();
  translate(50,100);
  colilla();
  popMatrix();
  }

  }
  
  if(vida1<=0){
    fill(0);  
    text("GANADOR \nPELEADOR \n1", 400,175);
    if(tl<=55){
      tl+=5;
    }
      
  //Peleador 2
  if(J2==1){
  pushMatrix();
  translate(525,100);
  sopaM();
  popMatrix();
  }
  if(J2==2){
  pushMatrix();
  translate(525,100);
  lata();
  popMatrix();
  }
  if(J2==3){
  pushMatrix();
  translate(525,100);
  plato();
  popMatrix();
  }
  if(J2==4){
  pushMatrix();
  translate(525,100);
  vaso();
  popMatrix();
  }
  if(J2==5){
  pushMatrix();
  translate(525,100);
  colilla();
  popMatrix();
  }
  }
  
  textSize(20);
  fill(0);
  text("Pulsa Espacio para volver a jugar",400,400);
  
  if (keyPressed && key==' '){        //P=1,J1,J2,turno=0; float ataque1,ataque2,vida1,vida2;
    J1=0;
    J2=0;
    ataque1=0;
    ataque2=0;
    vida1=0;
    vida2=0;
    P=1;
    x=0;
    y1=900;
    tl=0;
  }
}

//************************************************ PELEADORES *************************************

void sopaM(){         // <------- Sopa M
  //relleno blanco
  noStroke();
  fill(255);
  rect(50,20,80,190);
  rect(30,30,20,170);
  rect(130,30,20,170);
  rect(20,40,10,60);
  rect(150,40,10,60);
  
  //linea negra horizontal
  noStroke();
  fill(0);
  rect(50,10,80,10);
  rect(30,20,20,10);
  rect(130,20,20,10);
  rect(20,30,10,10);
  rect(150,30,10,10);
  rect(20,60,10,10);
  rect(150,60,10,10);
  rect(30,70,30,10);
  rect(120,70,30,10);
  rect(60,80,60,10);
  rect(40,200,10,10);
  rect(130,200,10,10);
  rect(50,210,80,10);
  //linea negra vertical
  rect(10,40,10,60);
  rect(160,40,10,60);
  rect(20,100,10,50);
  rect(150,100,10,50);
  rect(30,150,10,50);
  rect(140,150,10,50);

//lineas de color cafe
  noStroke();
  fill(198, 89,17);
  rect(30,110,20,10);
  rect(130,110,20,10);
  rect(50,120,20,10);
  rect(110,120,20,10);
  rect(70,130,40,10);

//lineas de color amarillas
  noStroke();
  fill(255, 217,102);
  rect(30,130,10,10);
  rect(140,130,10,10);
  rect(40,140,20,10);
  rect(120,140,20,10);
  rect(60,150,60,10);
}

void lata(){          // <----------- Lata
  //relleno blanco
  noStroke();
  fill(255);
  rect(25,10,80,70);
  rect(20,15,15,60);
  rect(105,20,10,50);
  rect(10,25,10,45);
  rect(115,40,5,25);  
  
  //relleno rojo
  noStroke();
  fill(192,0,0);
  rect(10,65,5,125);
  rect(115,65,5,125);
  rect(15,70,10,135);
  rect(105,70,10,135);
  rect(25,75,15,135);
  rect(90,75,15,135);
  rect(40,80,50,135);
  
   //detalles gris
  noStroke();
  fill(128,128,128);
  rect(30,25,35,5);
  rect(40,20,25,5);
  rect(45,30,20,5);

   //detalles amarillo
  noStroke();
  fill(255, 192,0);  
  rect(60,60,10,5);
  rect(55,65,20,30);
  rect(60,80,10,5);
  rect(50,70,5,20);
  rect(75,70,5,20);
  rect(45,75,5,10);
  rect(80,75,5,10);
  
  //linea negra 
  noStroke();
  fill(0);
  rect(35,5,60,5);
  rect(25,10,10,5);
  rect(95,10,10,5);
  rect(20,15,5,5);
  rect(105,15,5,5);
  rect(40,15,25,5);
  rect(15,20,5,5);
  rect(30,20,10,5);
  rect(65,20,5,15);
  rect(110,20,5,5);
  rect(10,25,5,15);
  rect(25,25,5,5);
  rect(115,25,5,15);
  rect(15,30,5,5);
  rect(20,35,5,5);
  rect(25,40,15,5);
  rect(40,45,50,5);
  rect(90,40,15,5);
  rect(105,35,5,5);
  rect(110,30,5,5);
  rect(5,40,5,150);
  rect(120,40,5,150);
  rect(10,190,5,10);
  rect(115,190,5,10);
  rect(15,200,5,5);
  rect(110,200,5,5);
  rect(20,205,5,5);
  rect(105,205,5,5);
  rect(25,210,15,5);
  rect(90,210,15,5);
  rect(40,215,50,5);
}

void plato(){             // <------- Plato
  //color interno
  noStroke();
  fill(255);
  rect(130,20,240,200);
  rect(80,40,50,160);
  rect(370,40,50,160);
  rect(60,60,20,120);
  rect(420,60,20,120);
  rect(40,70,20,100);
  rect(440,70,20,100);
  rect(20,80,20,70);
  rect(460,80,20,70);
    
  //linea negra
  noStroke();
  fill(0);
  rect(190,10,120,10);
  rect(130,20,60,10);
  rect(310,20,60,10);
  rect(100,30,30,10);
  rect(370,30,30,10);
  rect(80,40,20,10);
  rect(400,40,20,10);
  rect(60,50,20,10);
  rect(420,50,20,10);
  rect(40,60,20,10);
  rect(440,60,20,10);
  rect(30,70,10,10);
  rect(460,70,10,10);
  rect(20,80,10,20);
  rect(470,80,10,20);
  rect(10,100,10,30);
  rect(480,100,10,30);
  rect(20,130,10,20);
  rect(470,130,10,20);
  rect(30,150,10,10);
  rect(460,150,10,10);
  rect(40,160,10,10);
  rect(450,160,10,10);
  rect(50,170,10,10);
  rect(440,170,10,10);
  rect(60,180,20,10);
  rect(420,180,20,10);
  rect(80,190,20,10);
  rect(400,190,20,10);
  rect(100,200,30,10);
  rect(370,200,30,10);
  rect(130,210,40,10);
  rect(330,210,40,10);
  rect(170,220,160,10);
  
  //linea interna
  noStroke();
  fill(191,191,191);
  rect(220,40,70,10);
  rect(170,50,50,10);
  rect(290,50,40,10);
  rect(140,60,30,10);
  rect(330,60,30,10);
  rect(120,70,20,10);
  rect(360,70,20,10);
  rect(100,80,20,10);
  rect(380,80,20,10);
  rect(80,90,20,10);
  rect(400,90,20,10);
  rect(70,100,10,10);
  rect(420,100,10,10);
  rect(60,110,10,20);
  rect(430,110,10,20);
  rect(70,130,10,10);
  rect(420,130,10,10);
  rect(80,140,10,10);
  rect(410,140,10,10);
  rect(90,150,20,10);
  rect(390,150,20,10);
  rect(110,160,30,10);
  rect(360,160,30,10);
  rect(140,170,40,10);
  rect(320,170,40,10);
  rect(180,180,140,10);
 }
 
 void vaso (){                // <------ Vaso
   //color interno obscuro
  noStroke();
  fill(169,208,142);
  rect(40,20,100,60);
  rect(20,40,140,20);
  
  //color interno claro
  noStroke();
  fill(198,224,180);
  rect(30,70,40,30);
  rect(110,70,40,30);
  rect(40,100,100,60);
  rect(50,160,80,60);
  rect(60,220,60,20);
  rect(70,80,40,170);
  
  //linea negra
  noStroke();
  fill(0);
  rect(60,10,60,10);
  rect(40,20,20,10);
  rect(120,20,20,10);
  rect(20,30,20,10);
  rect(140,30,20,10);
  rect(10,40,10,70);
  rect(160,40,10,70);  
  rect(20,110,10,60);
  rect(150,110,10,60);
  rect(30,170,10,60);
  rect(140,170,10,60);
  rect(40,230,10,20);
  rect(130,230,10,20);  
  rect(50,250,10,10);
  rect(120,250,10,10);
  rect(60,260,60,10);
  rect(20,60,20,10);
  rect(140,60,20,10);  
  rect(40,70,30,10);
  rect(110,70,30,10);
  rect(70,80,40,10);
  }
  
  void colilla(){              // <------ Colilla
    //parte blanca
  noStroke();
  fill(255);
  rect(40,40,40,60);
  rect(30,80,20,20);

  //ceniza obscura
  noStroke();
  fill(89,89,89);
  rect(60,20,10,30);
  rect(50,20,10,30);
  rect(40,40,30,20);
  rect(30,50,30,10);
  rect(20,60,30,10);
  rect(10,70,30,10);
  rect(10,80,20,10);  
  
  //ceniza clara
  noStroke();
  fill(174,170,170);
  rect(50,30,10,10);
  rect(40,40,10,20);
  rect(30,50,10,10);
  rect(50,50,10,10);
  rect(20,60,20,10);
  rect(10,70,10,20); 
    
  //color filtro
  noStroke();
  fill(198,89,17);
  rect(40,100,10,10);
  rect(50,90,10,20);
  rect(60,80,10,40);
  rect(70,60,10,60);
  rect(80,40,20,100);
  rect(100,60,30,90);
  rect(130,80,30,80);
  rect(160,100,20,40);
  
  //linea negra
  noStroke();
  fill(0);
  rect(60,20,10,10);
  rect(70,30,20,10);
  rect(90,40,10,10);
  rect(100,50,20,10);
  rect(120,60,10,10);
  rect(130,70,20,10);
  rect(150,80,10,10);
  rect(160,90,20,10);
  rect(180,100,10,20);
  rect(170,120,10,20);
  rect(160,140,10,10);
  rect(150,150,10,10);
  rect(130,160,20,10);
  rect(110,150,20,10);
  rect(90,140,20,10);
  rect(80,130,10,10);
  rect(60,120,20,10);
  rect(40,110,20,10);
  rect(30,100,10,10);
  rect(10,90,20,10);
  }
