class Ball{
    int size;
    color ballColor;
    int changeInX;
    int changeInY;
    int x;
    int y;
    
    Ball(){
       size = 15;
       ballColor = color(random(256), random(256), random(256));
       changeInX = int(random(10)) - 5;
       changeInY = int(random(10)) - 5;
       x = int(random(500));
       y = int(random(500));
       drawBall();
    }
    void drawBall(){
      fill(ballColor);
      ellipse(x, y, size, size);
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
}