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
      for(Ball ball : balls){
        if(ball.expandOrShrink != 0){
          for(Ball otherBall : balls){
            //collision detection
            int radA = ball.size;
            int radB = otherBall.size;
            int dist = (ball.x-otherBall.x)*(ball.x-otherBall.x)+(ball.y-otherBall.y)*(ball.y-otherBall.y);
            if((radA+radB)*(radA+radB) < dist){
              //within reach to infect
	      otherBall.expandOrShrink = 1;
            }
          }
        }
      }
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