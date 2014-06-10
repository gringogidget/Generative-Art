/*
 * Creative Coding
 * Week 2, Foldout 02: Conditionals: switch statement
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 
 * This program illustrates the use of the switch statement.
 * Notice that it is functionally equivelent to the cascade of if...else if ...
 * statements from the previous example.
 *
 * The general form is:
 * switch (condition) {
 *   case X:
 *      execute the code below the case if "condition == X"
 *      keep executing until you encounter a "break"
 *   break;
 *   case Y:
 *      execute the code below the case if "condition == Y"
 *   break;
 *   case Z:
 *      execute the code below the case if "condition == Z"
 *      if you forget the break statement, the code keeps executing
 *      to the end of the switch statement or unitl a break is encountered.
 *   break;
 *   default:
 *      place a "default" at the bottom of your case statement to catch
 *      any values of condition that were not matched by any previous case.  
 * }
 *
 *
 */   
void setup() {
  size(500, 300);
}

void draw() {
  background(0);

  stroke(255); 

  for (int i=0; i<width; i+=4) {
    // loop that increments i from 0 to width by 4
    
    int style = i%3; // the remainder when i is divided by 3

    switch(style) {
    case 0:
      line(i, 0, i, 100);
      break;
    case 1:
      line(i, 100, i, 200);
      break;
    case 2:
      line(i, 200, i, 300);
      break;
    } // end switch
  } // end for

} // end draw
