Ball[] balls;
boolean reactionStarted;
void setup(){
  size(500,500);
  reactionStarted = false;
  balls = new Ball[25];
  for (int x = 0; x < balls.length; x++){
    balls[x] = new Ball();
  }
}

void draw(){
  background(0,0,0);
  for (int x = 0; x < balls.length; x++){
    balls[x].move();
    balls[x].drawBall();
  }
}