float y = 75;
float y2 = 125;
float t = 150;
float t2 = 230;
void setup(){
  size(600,600);
  frameRate(1);
}

void draw(){
  sea();
  action();
}

void sea(){
  noStroke();
  fill(26,212,255,122);
 rect(0,225,600,375); 
 //waterPart 1
   noStroke();
  fill(67,219,255,122);
 rect(0,200,600,50);
 //waterPart 2
    noStroke();
  fill(111,227,255,122);
 rect(0,150,600,50);
 //waterPart 3
    noStroke();
  fill(150,235,255,122);
 rect(0,100,600,50);
 //waterPart 4
     noStroke();
  fill(230,233,255,122);
 rect(0,0,600,122);
 //darkwater
    noStroke();
  fill(0,0,0,25);
 rect(0,450,600,50);
 //darkwater2
     noStroke();
  fill(0,0,0,50);
 rect(0,500,600,50);
  //darkwater3
     noStroke();
  fill(0,0,0,75);
 rect(0,550,600,50);
}

void action(){
  noFill();
  stroke(122);
 triangle(315,25,275,95,325,105);
 //wave
 stroke(50);
 fill(t,235,255,255);
 bezier(0,100,100,y,200,y,300,100);
 stroke(50);
    fill(t2,233,255,255);
 bezier(300,100,400,y2,500,y2,600,100);


 while(y<126){
   y = y + 1;
  y2 = y2 - 1;
}
  if(y<=0){
    t=230;
  }
    if(y>=0){
    t2=150;
  }
}
