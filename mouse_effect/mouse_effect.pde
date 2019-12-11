void setup()
{
  size(1000, 800);
  background(255);
  frameRate(200); //un gros framerate par ce que c'est des ptites bulles et j'en veux pleeeeeeeein
}

float vary_pos(float pos) // cette fonction sert à ce que les bulles ne soient pas pile sur la souris, mais un peu à côté.
{
  float result = (pos + random(25) - random(25));
  return result;
}

/*float fade_out(float opacity) // J'arrive toujours pas à fadeout les bulles... si quelqu'un a une idée :), il faudra sûrement virer ce bout pour le jour J. 
{
   if (opacity > 0)
     {
       opacity--;
       return opacity;
     }
   return 0;
}*/

void draw()
{
  float red = random(240);
  float blue = random(240);
  float green = random(240);
  float opacity = random(205);
  float size = random(8); // la taille des bulles
  if (mousePressed)
  {
    fill(red, blue, green, opacity);
    stroke(red + 10, blue + 10, green + 10, opacity + 50); //le tour des bulles a presque la même couleur et est plus opaque
    ellipse(vary_pos(mouseX), vary_pos(mouseY), size, size);
  } 
  if (keyPressed && key == 'c') // pour clear sans avoir à recharger la page
  {
    clear();
    background(255); //sinon il met un background noir par défaut, ce qui est cool aussi d'ailleurs, ou bien on peut mettre un bouton qui fait passer le fond du noir au blanc mais c'est peut être un peu trop de code. 
  }
}
