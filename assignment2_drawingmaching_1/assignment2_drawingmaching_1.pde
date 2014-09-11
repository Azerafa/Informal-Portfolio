// myfirstsketch : draw a white square where my mouse is
// groovy

// at the top of the sketch
float r, g, b, w, h, x1, y1, x2, y2; // GLOBAL variables

// this runs when i hit play
void setup()
{
  size(1300, 300); // sets up the size of the canvas
  
  background(0, 40, 150);
  
  x1 = width/5;
  y1 = height/20;
  
}

// this runs every frame
void draw()
{
  
   // these are variables:
  r = random(128, 255);
  g = random(0, 19);
  b = random(0,255);
  
  w = random(5, 250);
  h = random(10, 20);
  
  // this fades out the previous stuff
  fill(r, g, b, 100); //changed from 0's
  stroke(0,0,0,25); //changed from no stoke
  rect(0, 0, width-1, height-1);
  
  // this is how far away the thingie is from the mouse
  float dx = (mouseX-x1)/20.;
  float dy = (mouseY-y1)/20.;
  
  float drunkx = 0.;
  drunkx += random(-10, 10);
  drunkx += random(-10, 10);
  drunkx += random(-10, 10);
  drunkx = drunkx / 3.;
  float drunky = 0.;
  drunky += random(-10, 20);
  drunky += random(-10, 20);
  drunky += random(-10, 10); //changed to 30 and 10
  drunky = drunky / 3.;
  
  //println(dx + " " + dy);
  
  // this adds the distance and some drunkness to the position
  x2 = x1+random(min(0, dx), max(0, dx))+drunkx;
  y2 = y1+random(min(0, dy), max(0, dy))+drunky;
  
  // draw the line
  noFill(); // don't draw a fill
  stroke(255, 255, 255, 100);
  line(x1, y1, x2, y2); // x1, y1, x2, y2
  
  // draw the circle
  float radius = random(5, 20);
  fill(240, 230, 255, 100); // set the fill to yellow
  rect(x2, y2, radius, radius); // draw a circle
  
  // stash our new x and y for the next round
  x1 = x2;
  y1 = y2;
  
  // checking the boundaries
  if(x1>width) x1 = 0;
  if(x1<0) x1 = width;
  if(y1>height) y1 = 0;
  if(y1<0) y1 = height;
  
}

// this runs when i pick up a key on the keyboard
void keyReleased()
{
  if(key==' ') background(20, 0, 30);
  
}
