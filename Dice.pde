 Die a;
     void setup()
  {
    a = new Die(0,0);
    size(450,450);
    noLoop();
  }
  void draw()
  {
    a.show();
    a.roll();
    System.out.println(a.num);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int dX, dY, num;
      
      Die(int x, int y) //constructor
      {
        dX = x;
        dY = y;
      }
      void roll()
      {
        num = (int)(Math.random()*6)+1;
      }
      void show()
      {
        fill(250,230,160);
        rect(dX, dY, 30, 30);
      }
  }
