let img, img2, img3;


function setup() {
  createCanvas(windowWidth, windowHeight, WEBGL);
//  createCanvas(800, 1120, WEBGL); // 800, 1120
//  translate(mouseX, mouseY, mouseY/2);
  background(255);
  img = loadImage("mix.png");
}

function draw() {

  push();
  translate(mouseX-width/2+200, mouseY-height/2+200, 100);
  beginShape();
//  noStroke();
  texture(img);
  box(270, 210, 1800);//box1
  endShape();
  pop();

  push();
  translate(mouseX-width/2-300, mouseY-height/2, 100);
  fill(255);
  rotate(150);
  beginShape();  
  texture(img);
  box(270, 180, 1500);//box2
  endShape();
  pop();

  push();
  translate(mouseX-width/2+100, mouseY-height/2-350, 100);
  fill(255);
  rotate(40);
  beginShape();
  texture(img);
  box(270, 180, 1800);//box3
  endShape();
  pop();
  
}
