Monster bob;
void setup() {
  size(800, 800);
  background(0);
  bob= new Monster(500,200);
}

void draw() {
  background(0);
  bob.update();
  bob.display();
  bob.move();

}