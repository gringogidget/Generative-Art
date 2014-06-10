/*
 * Creative Coding
 * Week 2, Foldout 04: Basic Keyboard Interaction
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This sketch shows how to do interaction with the keyboard.
 * Try pressing, releasing, clicking and dragging the mouse and observe the results.
 * When each event happens the sketch also prints a message in the console.
 *
 */

float circleWidth;
float backgroundValue;

void setup() {
  size(300, 300);
  circleWidth =   50;
  backgroundValue = 120;
}


void draw() {
  background(backgroundValue);
  noStroke();
  ellipse(150, 150, circleWidth, circleWidth);
  
  if (keyPressed) {
    if (key == 'a') {
      backgroundValue ++;
    } else if (key == 's') {
      backgroundValue --;
    }
    // ensure backgroundValue is constrianed between 0 and 255
    backgroundValue = constrain(backgroundValue,0,255);
  }
  
}


void keyPressed() {
  if (key == 'c') {
    circleWidth = 150;
  }
  
  println("pressed " + int(key) + " " + keyCode);
}   

void keyReleased() {
  if (key == 'c') {
    circleWidth = 50;
  }
  
  println("Released " + int(key) + " " + keyCode);
}

