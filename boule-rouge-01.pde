int posY;
int diametre = 200;

void setup() {
  size(300,600);
  fill(255,0,0);
  noStroke();
  posY = -(diametre/2);
}

void draw() {
  ellipse(width/2, posY, diametre, diametre);
  posY += 1;  
}

/*
int posY;
int diametre = 200;

void setup() {
  size(300,600);
  fill(255,0,0);
  noStroke();
  posY = -(diametre/2);
}

void draw() {
  background(255);
  ellipse(width/2, posY, diametre, diametre);
  posY += mouseY/2;
  if (posY >= height+(diametre/2)) {
    posY = -(diametre/2);
  }
}
*/
