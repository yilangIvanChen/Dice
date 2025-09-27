die help;
PImage one;
PImage two;
PImage three;
PImage four;
PImage five;
PImage six;
PImage no;
int click;
int sum = 0;
void setup() {
  one = loadImage("rollOne.png");
  two = loadImage("rollTwo.png");
  three = loadImage("rollThree.png");
  four = loadImage("rollFour.png");
  five = loadImage("rollFive.jpg");
  six = loadImage("rollSix.png");
  no = loadImage("whatamidoing.png");
  background(150,230,255);
  size(785, 640);
  noLoop();
}
void draw() {
  sum = 0;
  background(90,140,260);
  for (int y = 5; y < 500; y+=65) {
    for (int x = 5; x< 750; x+=65) {
      help = new die(x, y);
      sum += help.roll();
      help.show();
    }
  }
  fill(0,0,0);
  textSize(64);
  text("Total: " + sum,0,590);
  if (sum%100 == 67){
    image(no,350,530,width/9,height/9);
  }
  else{
    textSize(24);
   if (click>30)
     text("don't you have something to do? \nyou should probably go do \nthat instead",350,550);
   else if (click>=18)
     text("or something like that",350,550);
   else if (click>=16)
     text("make it like my signature",350,550);
   else if (click>=14)
     text("maybe i should make this a \nrecurring feature",350,550);
   else if (click>=12)
     text("but it kinda gives this low effort \nassignment personality yk",350,550);
   else if (click>=10)
     text("don't really know why i added this",350,550);
   else if (click>=7)
     text("this text can change btw",350,550);
   else
     text("incoherency at its peak",350,550);
  }
}
void mousePressed() {
  click++;
  redraw();
}
class die //models one single dice cube
{
  int dX, dY, num;

  die(int x, int y) {
    dX = x;
    dY = y;
  }
  int roll() {
    num = (int)(Math.random()*6)+1;
    return num;
  }
  void show() {
    if (num == 1){
      fill(255,0,0);
      rect(dX, dY, 60, 60);
      image(one,dX+4,dY+3,width/15,height/12);
    }
    if (num == 2){
      fill(0, 255, 0);
      rect(dX, dY, 60, 60);
      image(two,dX+3,dY+2,width/15,height/12);
    }
    if (num == 3){
      fill(0, 0, 255);
      rect(dX, dY, 60, 60);
      image(three,dX+3,dY+2,width/15,height/12);
    }
    if (num == 4){
      fill(255, 255, 0);
      rect(dX, dY, 60, 60);
      image(four,dX+3,dY+2,width/15,height/12);
    }
    if (num == 5){
      fill(255, 0, 255);
      rect(dX, dY, 60, 60);
      image(five,dX+3,dY+2,width/15,height/12);
    }
    if (num == 6){
      fill(0, 255, 255);
      rect(dX, dY, 60, 60);
      image(six,dX+6,dY+2,width/15,height/12);
    }
  }
}
