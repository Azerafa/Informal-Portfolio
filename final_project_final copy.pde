int chalk = 0;
PFont f;  
float r, g, b, w, h; // GLOBAL variables
 
void setup() {
  
  size(200,200);
  f = createFont("Arial",16,true); // STEP 3 Create Font
  
  size(1210, 600);
  background(0);
  strokeWeight(3);
  smooth();
  r = random(128, 255);
  g = random(0, 192);
  b = 0;
  stroke(r,g,b);
 
}
 
void draw() {
  
//these are the constant thingies
  textFont(f,90);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die...",20,90);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,300);  // STEP 6 Display Text

  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,350);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,250);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,200);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,400);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,450);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",20,500);  // STEP 6 Display Text
  
  //NEXT COLUMN
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,300);  // STEP 6 Display Text

  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,350);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,250);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,200);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,400);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,450);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",420,500);  // STEP 6 Display Text
  
  //THIRD COLUMN
   textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,300);  // STEP 6 Display Text

  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,350);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,250);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,200);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,400);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,450);  // STEP 6 Display Text
  
  textFont(f,20);                 // STEP 4 Specify font to be used
  fill(255);                        // STEP 5 Specify font color 
  text("Before I die I want to______________.",820,500);  // STEP 6 Display Text
  
  if (chalk == 1) {
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  r = random(128, 255);
  g = random(0, 100);
  b = random(0,255);
  stroke(r,g,b);
 
  
  }
}

 void keyReleased() {
   if (key == ' ') {
     background (0);
   }
 }
 
void mousePressed() {
  chalk = 1-chalk;
}

