/*
Dans ce sketch, sont employés:
- Variables (+types de variables)
- Librairies (PDFExport en l'occurence)
- Fonctions couleur (stroke, background, fill, transparence, etc...)
- Conditions
- Random()
*/

import processing.pdf.*;

int nombreX = 100;
int nombreY = 50;
int largeur; // largeur de mon "carré"
int hauteur; // hauteur de mon "carré"
int posX = 0;
int posY = 0;
boolean permute; 

void setup() {
  size(600,600);
  largeur = width/nombreX;
  hauteur = height/nombreY;
  beginRecord(PDF, "maGrille.pdf"); 
  noStroke();
  background(0);
}

void draw() {
  if (permute) {
    fill(255);
  } else {
    fill(random(255), random(255), random(255), 180);
  }
  rect(posX, posY, largeur, hauteur);
  posX = posX + largeur;
  permute = !permute; 
  
  if (posX >= width) {
    posX = 0+floor(random(-20, 20));
    posY = (posY + hauteur)+floor(random(-20, 20));
    permute = !permute; 
    largeur = largeur+1;
  }
  if(posY >= height) {
    //save("grid-"+hour()+"-"+minute()+"-"+second()+".png"); 
    endRecord();
    exit();
  }
}