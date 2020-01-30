float juuX;
float juuY;
float juuSizeX;
float juuSizeY;
float moveX; 
float moveY;
float buttonX; 
float buttonY; 
float buttonSizeX; 
float buttonSizeY;
float ooX;
float ooY;
float ooSizeX;
float ooSizeY;
float aaX;
float aaY;
float aaSizeX;
float aaSizeY;
float seed=0; 
boolean lost;
PFont font;
PVector location;
PVector velocity;  
PVector gravity; 
int score1;
int score2;
float x, y, vx, vy;
float radius;
Pelaaja1 pelaaja1;
Pelaaja2 pelaaja2;
Pelaaja3 pelaaja3;
Pelaaja4 pelaaja4;
Ball ball;
void setup() { 

//fullScreen();
size(1350,630);
  font= loadFont("SNAP8.vlw");
  textFont(font);
  background(0);
  textSize(40);
    ball = new Ball();
    pelaaja1 = new Pelaaja1();
    pelaaja2= new Pelaaja2();
    pelaaja3= new Pelaaja3();
    pelaaja4= new Pelaaja4();
    score1 = 0;
    score2=0;
    location = new PVector(100,100);
    velocity = new PVector(1.5,2.1);
    gravity = new PVector(0,0.2);
    reset();
}
class Ball {
  float x, y, vx, vy;
  float radius;

 
 Ball(){
  x = 600;
  y = 180;
  vx = 1;
  vy = 1;
  radius = 15;
 }
 void move(){
   x += vx;
   y += vy;
   checkForEdges();
 }
 
 void show(){
  fill(0);
  ellipse(x, y, radius, radius); 
 }

 void checkForEdges(){
   if (x < 500 || x > 890){
    lost=true;
    gameOver();
   }
   if (y < 175){
    lost=true;
    gameOver();
   }
   if (y > 475){
    lost=true;
    gameOver();
   }
 }
 void gameOver(){
     fill(255);
     textSize(60);
     text("Game Over", 500, 120);
     

   
     x = width*2;
     y = height*2;
     vx = 0;
     vy = 0;
fill(#59E52C);
     rect(juuX, juuY, juuSizeX, juuSizeY);
          fill(255);
     rect(buttonX, buttonY, buttonSizeX, buttonSizeY); 
     fill(0);
           textSize(23);
     text("Play Again",615, 535);
       textSize(40);
     if ((605< mouseX && mouseX < 765) && (500 < mouseY && mouseY < 550) && mousePressed && lost) { 
    reset();
    textSize(40);
  }
  fill(#950002);
  rect(ooX, ooY, ooSizeX, ooSizeY);
        fill(255);
        rect(aaX, aaY, aaSizeX, aaSizeY);   
        fill(0);
        textSize(27);
        text("Guit",648, 715);
        textSize(40);
       if ((605< mouseX && mouseX < 765) && (680 < mouseY && mouseY < 730) && mousePressed && lost) { 
    System.exit(1);
  } 
 }
 void reset() {
         moveX = 0; 
      moveY = 0;
 frameRate(100);
score1=0;
  text("Points: " + score1, 595, 600);
  juuX=605;
  juuY=500;
  juuSizeX=160;
  juuSizeY=50;
    buttonX = 610; 
  buttonY = 505; 
  buttonSizeX = 150; 
  buttonSizeY = 40;
    ooX=605;
ooY=680;
ooSizeX=160;
ooSizeY=50;
aaX=610;
aaY=685;
aaSizeX=150;
aaSizeY=40;
  x = 500;
  y = 180;
  vx = 1;
  vy = 1;
  radius = 15;
 
  lost = false;
  stroke(0);
    strokeWeight(1);
}
 }
 class Pelaaja1{
  float x, y;
   float radius;
 
 Pelaaja1(){
  x = 500;
  y = 475-40;
  radius=50;
 } 
  
  
 void show(){
    fill(255, 255, 0);
    ellipse(x, y, radius, radius);
     fill(255);
    ellipse(x-9, y-2, 14, 14);
    ellipse(x+9, y-2, 14, 14);
    fill(0);
    ellipse(x-9, y-2, 8, 8);
    ellipse(x+9, y-2, 8, 8);
    fill(#F56F6F);
    triangle(x-8, y+6, x, y-2, x+8, y+6);
    fill(#644646);
    ellipse(x, y+8, 18, 5);
    

 }
 void colors(){
mouseX=520;
 }
 void jep(){
   mouseX=875;
 }
 void liike(){
   if (520> mouseX) { 
    colors();
  }
  if(875<mouseX){
    jep();
  }
   x =mouseX;
   
 }
   
  
}
class Pelaaja2{
  float x, y;
   float radius;
 
 Pelaaja2(){
  x = 500;
  y = 165+40;
  radius=50;
 } 
  
  
 void show(){
        fill(255, 255, 0);
    ellipse(x, y, radius, radius);
     fill(255);
    ellipse(x-9, y-2, 14, 14);
    ellipse(x+9, y-2, 14, 14);
    fill(0);
    ellipse(x-9, y-2, 8, 8);
    ellipse(x+9, y-2, 8, 8);
    fill(#F56F6F);
    triangle(x-8, y+6, x, y-2, x+8, y+6);
    fill(#644646);
    ellipse(x, y+8, 18, 5);

 }
 void colors(){
mouseX=520;
 }
 void jep(){
   mouseX=875;
 }
 void liike(){
   if (520> mouseX) { 
    colors();
  }
  if(875<mouseX){
    jep();
  }
   x =mouseX;
   
 }
   
  
}
class Pelaaja3{
  float x, y;
   float radius;
 
 Pelaaja3(){
  x = 490+30;
  y = 165;
  radius=50;
 } 
  
  
 void show(){
        fill(255, 255, 0);
    ellipse(x, y, radius, radius);
     fill(255);
    ellipse(x-9, y-2, 14, 14);
    ellipse(x+9, y-2, 14, 14);
    fill(0);
    ellipse(x-9, y-2, 8, 8);
    ellipse(x+9, y-2, 8, 8);
    fill(#F56F6F);
    triangle(x-8, y+6, x, y-2, x+8, y+6);
    fill(#644646);
    ellipse(x, y+8, 18, 5);

 }
 void colors(){
mouseY=205;
 }
 void jep(){
   mouseY=435;
 }
 void liike(){
   if (205> mouseY) { 
    colors();
  }
  if(435<mouseY){
    jep();
  }
   y =mouseY;
   
 }
   
  
}
class Pelaaja4{
  float x, y;
   float radius;
 
 Pelaaja4(){
  x = 900-30;
  y = 165;
  radius=50;
 } 
  
  
 void show(){
        fill(255, 255, 0);
    ellipse(x, y, radius, radius);
     fill(255);
    ellipse(x-9, y-2, 14, 14);
    ellipse(x+9, y-2, 14, 14);
    fill(0);
    ellipse(x-9, y-2, 8, 8);
    ellipse(x+9, y-2, 8, 8);
    fill(#F56F6F);
    triangle(x-8, y+6, x, y-2, x+8, y+6);
    fill(#644646);
    ellipse(x, y+8, 18, 5);

 }
 void colors(){
mouseY=205;
 }
 void jep(){
   mouseY=435;
 }
 void liike(){
   if (205> mouseY) { 
    colors();
  }
  if(435<mouseY){
    jep();
  }
   y =mouseY;
   
 }
   
  
}
void drawElement(int x, int y){
    fill(#26D5EA);
    ellipse(x, y, 150, 150);
     fill(255);
    ellipse(x-20, y-2, 40, 40);
    ellipse(x+20, y-2, 40, 40);
    fill(0);
    ellipse(x-20, y-2, 28, 28);
    ellipse(x+20, y-2, 28, 28);
    
    fill(#644646);
    ellipse(x, y+24, 36, 10);
    fill(#F56F6F);
    triangle(x-19, y+22, x, y+2, x+19, y+22);
}
void draw() {
background(0);

   fill(#CE1537);

    rect(490, 165, 410, 310);
    fill(255);
    rect(460, 637, 500, 30);
    rect(460, 600, 500, 30);
    rect(460, 563, 500, 30);
      drawElement(150, 125);
      drawElement(370, 200);
      drawElement(150, 300);
      drawElement(370, 375);
      drawElement(150, 475);
      drawElement(1270, 125);
      drawElement(1050, 200);
      drawElement(1270, 300);
      drawElement(1050, 375);
      drawElement(1270, 475);
      drawElement(1050, 600);
      drawElement(370, 600);
     ball.move();
     ball.show();
    pelaaja1.liike();
    pelaaja1.show();
    pelaaja2.liike();
    pelaaja2.show();
    pelaaja3.liike();
    pelaaja3.show();
    pelaaja4.liike();
    pelaaja4.show();
fill(0);
textSize(27);
text("Points: " + score1, 615, 590);
  tarkistatormays();
text("Points: " + score1, 615, 590);

text("Highscore: " + score2, 595, 625);
text("Highscore: " + score2, 595, 625);
          frameRate(120);
              if(score1>score2){
                   score2=score1;
             }
              if(score1>10){
                  stroke(255);
                  fill(0);
                  strokeWeight(2);
             }
              if(score1>60){
                   stroke(0);
                   fill(#4ADB23); 
                   strokeWeight(2);
             }
            if(score1>140){
                stroke(#C41CA5);
                fill(#FF5DE2);
                strokeWeight(2);
           }

            if(score1>300){
                stroke(#5BC8E8);
                strokeWeight(2);
           }
            if(score1>400){
                stroke(255, 0, 0);
                strokeWeight(2);
           }

            if(score1>550){
                stroke(random(0,255), random(0,255), random(0, 255));
                strokeWeight(2);
           }

 
      }
void reset() {
    ooX=605;
ooY=680;
ooSizeX=160;
ooSizeY=50;
aaX=610;
aaY=685;
aaSizeX=150;
aaSizeY=40;
   frameRate(100);
      moveX = 0; 
      moveY = 0;
      score1=0;
  text("Points: " + score1, 595, 600);
      juuX=605;
      juuY=500;
      juuSizeX=160;
      juuSizeY=50;
      buttonX = 610; 
      buttonY = 505; 
      buttonSizeX = 150; 
      buttonSizeY = 40;
      x = 500;
      y = 180;
      vx = 1;
      vy = 1;
      radius = 15;
      lost = false;
   stroke(0);
   strokeWeight(1);
}
 
 

 

void tarkistatormays(){
      float etaisyys_x = pelaaja1.x - ball.x;
      float etaisyys_y = pelaaja1.y - ball.y;
      float etaisyys = sqrt((etaisyys_x*etaisyys_x)+(etaisyys_y*etaisyys_y));
      float sateiden_summa = (pelaaja1.radius/2) + (ball.radius/2);
          if (etaisyys < sateiden_summa){
                ball.vy = -ball.vy;
 
                score1++;
            }
           float vali_x = pelaaja2.x - ball.x;
      float vali_y = pelaaja2.y - ball.y;
      float vali = sqrt((vali_x*vali_x)+(vali_y*vali_y));
      float valien_summa = (pelaaja2.radius/2) + (ball.radius/2);
          if (vali < valien_summa){
                ball.vy = -ball.vy;
     
                score1++;
            }
                  float w_x = pelaaja3.x - ball.x;
      float w_y = pelaaja3.y - ball.y;
      float w = sqrt((w_x*w_x)+(w_y*w_y));
      float w_w = (pelaaja3.radius/2) + (ball.radius/2);
          if (w < w_w){
 
                ball.vx=-ball.vx;
                score1++;
            }
      float q_x = pelaaja4.x - ball.x;
      float q_y = pelaaja4.y - ball.y;
      float q = sqrt((q_x*q_x)+(q_y*q_y));
      float q_q = (pelaaja4.radius/2) + (ball.radius/2);
          if (q < q_q){
 
                ball.vx=-ball.vx;
                score1++;
            }
}