PImage img;
PImage img1;

// red adjustment
int Rmin = 100;
int Rmax = 10;

//green adjustment 
int Gmin = 1;
int Gmax = 100;

//blue adjustment
int Bmin = 1;
int Bmax = 100;

void setup() {
  size(1296, 864);
  img = loadImage("IMG_1457.JPG");
}

void reTouch(){
for (int i = 0; i < img.pixels.length; i++) {
    float r = red(img.pixels[i]);
    float g = green(img.pixels[i]);
    float b = blue(img.pixels[i]);   
  if(r < Rmax && r >= Rmin){   
 img.pixels[i] = color(255,0,0);
  }
 if(g < Gmax && g >= Gmin){   
 img.pixels[i] = color(0,255,0);
 }
 if(b < Bmax && b >= Bmin){   
 img.pixels[i] = color(0,0,255);
}
img.updatePixels();
}}


void draw() {
  img.loadPixels();
  image(img, 0, 0, 1296, 864);
   reTouch();
  }