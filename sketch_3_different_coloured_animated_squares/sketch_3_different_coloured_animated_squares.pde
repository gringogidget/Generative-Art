/**
 * Translate. 
 * 
 * The translate() function allows objects to be moved
 * to any location within the window. The first parameter
 * sets the x-axis offset and the second parameter sets the
 * y-axis offset. 
 */
 
float x, y;
float dim = 80.0;

void setup() {
  size(600, 300);
  noStroke();
}

void draw() {
  background(233,150,122) /* Dark Salmon */ ;
  
  x = x + 0.9;
  
  if (x > width + dim) {
    x = -dim;
  } 
  
  translate(x, height/2-dim/2);
  fill(255,192,203) /* Pink */;
  rect(-dim/2, -dim/2, dim, dim);
  
  // Transforms accumulate. Notice how this rect moves 
  // twice as fast as the other, but it has the same 
  // parameter for the x-axis value
  translate(x, dim);
  fill(255,69,0) /*O range Red */;
  rect(-dim/2, -dim/2, dim, dim);
  
    translate(x, height/10-dim/10);
  fill(0) /* Black */;
  rect(-dim/2, -dim/2, dim, dim);
  
}
