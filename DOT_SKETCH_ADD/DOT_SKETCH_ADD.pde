//lets make lines od crazy things
//so the lines turned into dots, but I like this better 

float r, g, b, w, h; // GLOBAL variables

// wooOooOo
void setup()
{
  size(800, 700); // keep canvas large like my ego, adjust for portrait  
  
  background(1,5,40); //might as well start it white, nah blue, nah navy
  
  // deleted a thing here
  
}

// <3 
void draw()
{
    
    
  // these are variables: dont know id I need these now...
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  
  w = random(5, 200);
  h = random(5, 200);
  
  // set a more interesting color
  fill(r, g, b, 25); // Red, Green, Blue, (Alpha)
  stroke(r, g, b, 250);

  line(mouseX, mouseY, mouseX,mouseY); // x, y, w, h how do I make these small lines as opposed to dots
}

// hit space to turn off the lights 
void keyReleased()
{
  if(key==' ') background(0, 0, 0);
  
}
