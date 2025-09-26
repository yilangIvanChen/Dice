die help;
PImage one;
PImage two;
PImage three;
PImage four;
PImage five;
PImage six;

int sum = 0;
void setup() {
  one = loadImage("rollOne.png");
  background(150,230,255);
  size(500, 480);
  noLoop();
}
void draw() {
  sum = 0;
  background(90,160,240);
  for (int y = 5; y < 405; y+=45) {
    for (int x = 5; x< 510; x+=45) {
      help = new die(x, y);
      sum += help.roll();
      help.show();
    }
  }
  fill(0,0,0);
  textSize(36);
  text("Total: " + sum,0,450); //do the stupid thing and make the total represented by the stupid pictures
}
void mousePressed() {
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
    if (num == 1) //placeholder, replace with dumb pictures later
      image(one,dX,dY);
    if (num == 2)
      fill(0, 255, 0);
    if (num == 3)
      fill(0, 0, 255);
    if (num == 4)
      fill(255, 255, 0);
    if (num == 5)
      fill(255, 0, 255);
    if (num == 6)
      fill(0, 255, 255);
    rect(dX, dY, 40, 40);
  }
}
