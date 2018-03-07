PImage img;
PImage img1;

// red adjustment
int Rmin = 11;
int Rmax = 100;
int redcolor[] = {255, 0, 0};
//green adjustment 
int Gmin = 1;
int Gmax = 100;
int greencolor[] = {0, 255, 0};
//blue adjustment
int Bmin = 40;
int Bmax = 50;
int bluecolor[] = {0, 0, 255};
void setup() {
  size(1296, 864);
  img = loadImage("IMG_1457.JPG");
}

void reTouch() {
  for (int i = 0; i < img.pixels.length; i++) {
    float r = red(img.pixels[i]);
    float g = green(img.pixels[i]);
    float b = blue(img.pixels[i]);   
    if (r < Rmax && r >= Rmin) {   
      img.pixels[i] = color(redcolor[0], redcolor[1], redcolor[2]);
    }
    if (g < Gmax && g >= Gmin) {   
      img.pixels[i] = color(greencolor[0], greencolor[1], greencolor[2]);
    }
    if (b < Bmax && b >= Bmin) {   
      img.pixels[i] = color(bluecolor[0], bluecolor[1], bluecolor[2]);
    }
    img.updatePixels();
  }
}


void draw() {
  img.loadPixels();
  image(img, 0, 0, 1296, 864);
  //Rmin--;
  reTouch();
}
