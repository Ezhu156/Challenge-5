float r, g, b;
int x, y;
float wX,wY;
class Monster {
  Monster(int xloc, int yloc) {
    x= xloc;
    y=yloc;
  }
  void display() {

    //left leg
    noStroke();
    fill(255, 165, 0);
    rect(240, 425, 25, 75);
    //right leg
    rect(340, 425, 25, 75);

    //top horn
    noStroke();
    fill(255, 246, 215);
    triangle(292, 150, 302, 100, 312, 150);
    //left horn
    triangle(252, 180, 258, 120, 272, 170);
    //right horn
    triangle(332, 170, 347, 120, 352, 180);

    //left arm
    stroke(255, 151, 148);
    strokeWeight(20);
    noFill();
    arc(390, 370, 67, 200, 0, PI/2, OPEN);
    //right arm
    arc(210, 370, 67, 200, PI/2, PI, OPEN);

    // Body
    noStroke();
    fill(r, g, b);
    ellipse(300, 300, 300, 300);

    // Left Eye
    noStroke();
    fill(255);
    ellipse(220, 250, 40, 40);
    // Right Eye
    ellipse(380, 250, 40, 40);

    // Left eye pupil
    noStroke();
    fill(0, 0, 255);
    ellipse(220+wX, 257+wY, 20, 20);
    // Right eye pupil
    ellipse(380+wX, 257+wY, 20, 20);

    //one eye
    noStroke();
    fill(255);
    ellipse(300, 250, 100, 120);

    // one eye pupil   
    // quad(330, 250, 300, 280, 280, 250, 300, 220);
    noStroke();
    fill(0, 0, 255);
    quad(332, 250, 300, 290, 267, 250, 300, 210);

    // Mouth
    noStroke();
    fill(0);
    rect(231, 340, 141, 75);

    //tooth1
    noStroke();
    fill(255);
    triangle(247, 340, 257, 365, 267, 340);

    //tooth2
    noStroke();
    fill(255);
    triangle(277, 340, 287, 365, 297, 340);

    //tooth3
    noStroke();
    fill(255);
    triangle(307, 340, 317, 365, 327, 340);

    //tooth4
    noStroke();
    fill(255);
    triangle(337, 340, 347, 365, 357, 340);

    //tooth5
    noStroke();
    fill(255);
    triangle(352, 415, 362, 390, 372, 415); 

    //tooth6
    noStroke();
    fill(255);
    triangle(322, 415, 332, 390, 342, 415);

    //tooth7
    noStroke();
    fill(255);
    triangle(292, 415, 302, 390, 312, 415);

    //tooth8
    noStroke();
    fill(255);
    triangle(262, 415, 272, 390, 282, 415);

    //tooth8
    noStroke();
    fill(255);
    triangle(232, 415, 242, 390, 252, 415);

    //left foot
    noStroke();
    fill(g, b, r);
    quad(270, 500, 235, 500, 225, 530, 280, 530);
    //right foot
    quad(370, 500, 335, 500, 325, 530, 380, 530);
  } //end display

void update(){
  if (keyPressed){
   r = random(255);
   g = random(255);
   b = random(255);
  }
}
void move(){
   wX = map(mouseX, 0, width, -7, 4);
   wY = map(mouseY, 0, height, -7, 5);
}
}