color couleur_particules = color(255);

void setup() {
  size(800, 600);
  background(0);
}

void draw() {

  if (mousePressed) {
    couleur_particules = color(random(255), random(255), random(255));
  }

  if (keyPressed && key == 'c') {
    clear();
  }

  float taille = random(8);

  stroke(couleur_particules);
  fill(couleur_particules);
  ellipse(aleatoire_autour_de(mouseX), aleatoire_autour_de(mouseY), taille, taille);
}

float aleatoire_autour_de(float position) {
  return position + random( -25, 25 );
}
