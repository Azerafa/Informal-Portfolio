import ddf.minim.*; // import an external library //idk qhat im doing

// audio stuff
Minim minim; // this is the audio engine
AudioInput in; // this is the audio input
float theamp; // this is how loud i'm being

PShape s; // this is my cool shape

void setup()
{
  size(800, 800, OPENGL);
  // draw rectangles where coordinates are the center, not the edge:
 
   // audio shit
  minim = new Minim(this); // this starts the audio engine
  in = minim.getLineIn();
  stroke(255,255,255, 255);
  fill(100,10,230, 70);
}

void draw()
  {
  doaudiostuff();
  background(0);
  
  
  float samp = map(theamp, 0., 2., 1., 20);

  s = createShape();
  s.beginShape();
  s.vertex(-100*samp, -50*samp);
  s.vertex(-20, 50);
  s.vertex(60*samp, 70*samp);
  s.vertex(100, -100);
  s.endShape(CLOSE);

  shape(s, mouseX, mouseY);
}

void doaudiostuff()
{
  float rawamp = 0.;

  for (int i = 0; i < in.bufferSize () - 1; i++)
  {
    rawamp = rawamp + abs(in.left.get(i)); // add the abs value of the current sample to the amp
  }
  rawamp = rawamp / in.bufferSize();

  theamp = mysmooth(rawamp, theamp, 0.2);

}

// y(n) = a*y(n-1) + (1.0-a)*x(n)
float mysmooth(float x, float y, float a)
{
  return(a*y + (1.0-a)*x);
}
