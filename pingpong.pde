float ballXpos = 450;
float ballYpos = 250;
float dirX = 5;
float dirY = 4;
int gamescore=0;
void setup()
{
 size(700, 500);
}
void draw()
{
 background(155, 124, 120);
 text("SCORE: "+gamescore,width-100,10);
 ellipse(ballXpos, ballYpos, 20, 20);
 fill(0, 0, 0);
 rect(mouseX, 480, 80, 20); 
 if (ballYpos >= 500) // did the ball touch bottom of the game window, then decrement gamescore
 {
 gamescore--;
 dirY = -4;
 ballYpos += dirY;
 } else if (ballYpos <= 0) // did the ball touch top of the game window 
 { 
 dirY = 4;
 ballYpos += dirY;
 } else if (ballYpos >= 480 && ballXpos >= mouseX && ballXpos <= mouseX+80) // did the ball touch the pad, then increment gamescore
 {
 gamescore++;
 dirY = -4;
 ballYpos += dirY;
 } else
 {
 ballYpos += dirY;
 } 
 if (ballXpos <= 0)
 {
 dirX = 4; 
 ballXpos += dirX;
 } else if (ballXpos >= 700)
 {
 dirX = -4;
 ballXpos += dirX;
 } else
 {
 ballXpos += dirX;
 }
}