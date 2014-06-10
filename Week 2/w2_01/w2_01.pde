/*
 * Creative Coding
 * Week 2, 01 - Nine Squares
 * by Indae Hwang
 * Copyright (c) 2014 Monash University
 *
 * This program draws 3 rows of 3 squares in the display window
 * Each row is coloured red, green, and blue.
 * Each rectangle is draw individually, meaning there are 9 rect calls.
 * 
 */

void setup() {
  size(600, 600);
  background(180);
  noLoop();  // only execute the draw function once
  rectMode(CENTER); // set the rectangle drawing mode to specify the rectangle's centre
  noStroke();
}


void draw() {

  // row 1: slate blue
  fill(106, 90, 205);
  rect(150, 150, 100, 100);
  rect(300, 150, 100, 100);
  rect(450, 150, 100, 100);

  // row 2: dark orchid
  fill(153, 50, 204);
  rect(150, 300, 100, 100);
  rect(300, 300, 100, 100);
  rect(450, 300, 100, 100);

  // row 3: thistle
  fill(216, 191, 216);
  rect(150, 450, 100, 100);
  rect(300, 450, 100, 100);
  rect(450, 450, 100, 100);
  
} // end draw

