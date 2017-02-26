//Nombre de rectangle dans la largeur
int nombreX = 20;
//Nombre de rectangle sur la hauteur
int nombreY = 20;
// largeur de mon "carré"
int largeur; 
// hauteur de mon "carré"
int hauteur; 
// Position en X
int posX = 0; 
// Position en Y
int posY = 0; 
// Variable qui me permettra de permuter le blanc et le noir
boolean permute; 

void setup() {
  size(600,600);
  noStroke();
  largeur = width/nombreX;
  hauteur = height/nombreY;
}

void draw() {
  
  // On définit les couleurs de remplissage en fonction de la variable "permute"
  if (permute) {
    fill(255);
  } else {
    fill(0);
  }
  
  // On dessine le carré
  rect(posX, posY, largeur, hauteur);
  
  // On décale la position en X d'une largeur vers la droite
  posX = posX + largeur; 
  // On permute la couleur de remplissage
  permute = !permute; 
  
  //Si la position en X est supérieure ou égale à la largeur de mon canevas
  if (posX >= width) { 
    // On réinitialise la position en X à 0 (tout à gauche)
    posX = 0; 
    // On décale la position en Y d'une hauteur vers le bas
    posY = posY + hauteur; 
    // On permute la couleur de remplissage
    permute = !permute; 
  }
  
  //Si la position en Y est égale à la hauteur de mon canevas (si je suis arrivé en bas)
  if(posY == height) {
    //Sauve un fichier PNG de l'image.
    save("grid-"+hour()+"-"+minute()+"-"+second()+".png"); 
    // Quitte le programme. Et ferme la fenêtre également. Ce qui est différent de stop()
    exit();
  }
}