PImage tex;
color boxColor;

void setup() {
  size(800, 800, P3D);
  boxColor = color(0, 51, 102); 
}

void draw() {
  background(255);
//  ambientLight(102, 102, 102);
  pointLight(255, 255, 255, mouseX, mouseY, mouseX);
  lightSpecular(204, 204, 204);
  float s = map(mouseX, 0, width, 1, 10);
  shininess(s);
  
//  directionalLight(102, 102, 102, 0, 0, -1);
//  specular(255, 0, 255); // light color
  
//  noFill();
//  fill(255);

//  translate(-width/2+mouseX, -height/2+mouseY,0);

  //building_1
  pushMatrix();
  translate(0, height/2, -height/4);
  rotate(120);;
  box(300, 300, 2000);//box1
  popMatrix();
  
  //building_2
  pushMatrix();
  translate(width/2, 0, -height/4);
  rotate(120);
  box(200, 300, 2000);//box2
  popMatrix();

  //building_3
  pushMatrix();
  translate(width, height, 0); 
  box(400, 400, 3000);//box2
  popMatrix();
  
  //sun
  pushMatrix();
  translate(width/2, height/2, -width*5); 
  noStroke();
  sphere(100);
  popMatrix();
  
}
