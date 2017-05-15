Ball[] balls;
boolean reactionStarted;

void setup(){
  size(500,500);
  reactionStarted = false;
  balls = new Ball[25];
  for (int x = 1; x < balls.length; x++){//make 24 balls
    balls[x] = new Ball();
  }
}

void draw(){
  background(0,0,0);
  for (int x = 0; x < balls.length; x++){
    balls[x].move();
    if(reactionStarted){
      balls[x].detectCollision();
    }
    if(balls[x].size == 0){//time to die
       balls[x] = null; 
    }
    balls[x].drawBall();
  }
}

void mouseClicked(){
    balls[0] = new Ball();
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    balls[0].expandOrShrink = 1;
    balls[0].reacting = true;
}