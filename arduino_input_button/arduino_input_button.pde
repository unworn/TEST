import processing.serial.*;

import cc.arduino.*;
int pin = 5;
Arduino arduino;
int sensorValue;


void setup() {
  size(470, 280);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  noFill();
  noStroke();
  for (int i = 0; i <= 13; i++)
    arduino.pinMode(i, Arduino.INPUT);
}

void draw() {
  background(255);
  //stroke(on);
  
//  for (int i = 0; i <= 13; i++) {
    if (arduino.digitalRead(pin) == Arduino.HIGH){
      fill(255);
      stroke(0);
      
      
    }
    else {
      fill(0);
      noStroke();
    }
    println(arduino.digitalRead(pin));
    rectMode(CENTER);
    rect(width/2, height/2, 20, 20);
 // }
  
//  for (int i = 0; i <= 5; i++) {
//    ellipse(280 + i * 30, 240, arduino.analogRead(i) / 16, arduino.analogRead(i) / 16);
//    println(arduino.analogRead(i));
//  }
}
