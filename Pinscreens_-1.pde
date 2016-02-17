int cellsize = 2; 



PImage img; 
int i = 0; 

void setup() {
 img = loadImage("imag3.jpg"); 
  img.loadPixels();
  
  noStroke();
  frameRate(30); 
 
  size(img.width*2, img.height*2, P3D); 
 
  smooth();
 
  fill(0);
  
} 
int x = 0;
int y = 0;
int z = 0; 



void draw() {

  

  background(255); 


  
  camera(mouseX, mouseY, 1320.0, 150, 200, 0.0, 0.0, 36.0, 0.0); 
 
  
  
  
  
  
  
  for (int i = 0; i<img.width; i+=11) {
    for (int j = 0; j<img.height; j+=11) {

      int x = i*cellsize + cellsize/2;
      int y = j *cellsize + cellsize/2; 
      int loc = i + j*img.width; 
      color c = img.pixels[loc]; 
      float z = brightness(img.pixels[loc])/2.3; //-200.0;

   

      pushMatrix();
      fill(c); 
      noStroke();
      translate(i,j, z/3);       
      scale(1,1,z); 
      sphere(10);
      popMatrix();
    }
  }
}


