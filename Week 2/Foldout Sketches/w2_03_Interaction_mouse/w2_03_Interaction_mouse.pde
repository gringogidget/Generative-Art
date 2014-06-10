/*
 * Creative Coding
 * Week 2, Foldout 04: Basic Mouse Interaction
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This sketch shows how to do interaction with the mouse.
 * Try pressing, releasing, clicking and dragging the mouse and observe the results.
 * When each event happens the sketch also prints a message in the console.
 *
 */
 
float circleWidth;
float strokeWeightValue;
float backgroundValue;
float strokeColorValue;

void setup() {
  size(300, 300);
  circleWidth = 150;
  backgroundValue = 120;
  strokeWeightValue = 40;
  strokeColorValue = 80;
}


void draw() {
  background(backgroundValue);
  stroke(strokeColorValue);
  strokeWeight(strokeWeightValue);
  ellipse(150, 150, circleWidth, circleWidth);
  
  if(mousePressed){
     strokeColorValue = 50 + mouseY/5;
  }

}


void mousePressed() {
  println("The mouse button was pressed");
  circleWidth = 150;
}

void mouseReleased() {
  println("The mouse button was released");
  circleWidth = 50;
}

void mouseClicked() {
  println("The mouse button was clicked");
  if (backgroundValue == 120) {
    backgroundValue = 180;
  }else{
    backgroundValue = 120;
  }
}

void mouseDragged(){
  println("The mouse is being dragged");
  strokeWeightValue = mouseX/10;
  
  //Ensure that the value for stroke weight is never negative.
  if(strokeWeightValue < 0)
    strokeWeightValue = 0;
}

