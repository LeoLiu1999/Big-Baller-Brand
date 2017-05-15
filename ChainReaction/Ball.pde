class Ball{
    int size;
    color ballColor;
    int changeInX;
    int changeInY;
    int x;
    int y;
    int expandOrShrink;//-1 shrink, 0 nothing, 1 expand
    boolean reacting;
    
    Ball(){
       size = 15;
       ballColor = color(random(256), random(256), random(256));
       changeInX = int(random(10)) - 5;
       changeInY = int(random(10)) - 5;
       x = int(random(500));
       y = int(random(500));
       expandOrShrink = 0;
       reacting = false;
       drawBall();
    }
    void drawBall(){
      fill(ballColor);
      size = size + expandOrShrink;
      ellipse(x, y, size, size);
      if(size == 40){
        expandOrShrink = -1;
      }
    }
    
    void move(){
       x = x + changeInX;
       y = y + changeInY;
       if(x < 0 || x > 500){
         changeInX = -1 * changeInX; 
       }
       if(y < 0 || y > 500){
         changeInY = -1 * changeInY;
       }
    }
    
    void detectCollision(){
       if(/*collision*/){//infect
          changeInX = 0;
          changeInY = 0;
          expandOrShrink = 1;
       }
    }
}