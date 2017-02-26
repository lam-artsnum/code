int nombreX = 20;
int nombreY = 20;
int largeur; 
int hauteur; 
int posX = 0; 
int posY = 0; 
boolean permute; 

void setup() {
  size(600,600);
  noStroke();
  largeur = width/nombreX;
  hauteur = height/nombreY;
}

void draw() {
  if (permute) {
    fill(255);
  } else {
    fill(0);
  }
  rect(posX, posY, largeur, hauteur);
  posX = posX + largeur; 
  permute = !permute; 
  if (posX >= width) { 
    posX = 0; 
    posY = posY + hauteur; 
    permute = !permute; 
  }
  if(posY == height) {
    save("grid-"+hour()+"-"+minute()+"-"+second()+".png"); 
    exit();
  }
}