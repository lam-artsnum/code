void setup() {
  size(300,516);
  background(255);
  noStroke();
  smooth();
}

void draw() {
  fill(255);
  rect(0,0,width,height);
  mickey();
}

void mickey() {
  /* CERCLES ROUGES*/
  fill(170,0,20);
  ellipse(175,205,37,37);
  ellipse(175,205,37,37);
  ellipse(mouseX,mouseY,138,138);
  
  /* CERCLE AVEC CONTOUR*/
  noFill();
  stroke(170,0,20);
  ellipse(width-(138/2),290,138,138);
  noStroke();
  
  /* CERCLES NOIRS*/
  fill(0);
  ellipse(150,47.5,95,95);
  ellipse(75,120,95,95);
  ellipse(202,130,30,30);
  ellipse(240,130,30,30);
  ellipse(278,154,42,42);
  ellipse(232,290,30,30);
  ellipse(265,265,30,30);
  
  /* CERCLES JAUNES*/
  fill(220,200,0);
  ellipse(132/2,415,132,132);
  ellipse(width-(132/2),height-(132/2),132,132);
}