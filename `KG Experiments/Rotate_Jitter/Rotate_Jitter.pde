float angle;
float jitter;

void setup() {
  size(800, 600);
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw() {
  background(75);

  // during even-numbered seconds (0, 2, 4, 6...)
  if (second() % 2 == 0) {  
    jitter = random(-0.7, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/4, height/2);
  rotate(c);
  rect(0, 0, 180, 180);   
}
