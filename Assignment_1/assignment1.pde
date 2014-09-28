//Assignment 1
//Li Huang lh1708

float x, y, rotateAngle, spiralsRadius;
PImage img;
void setup() {
  img = loadImage("sky.jpg");

  size(800, 600);//set the scale of the background

  smooth();//anti-aliased edge

  colorMode(RGB, 100);
}

void draw() {


  background(img);//set the image of the background

  textSize(50);

  text("Assignment 1", mouseX, mouseY);


  translate(width/2, height/2);//reset the coordinate system,the center of the coordinate is width/2, height/2

  pushMatrix();//push the current transformation onto the matrix,learnt by nyu.edu/lynda

  rotateAngle += PI/500;//the angle 

  rotate(rotateAngle);//rotate the coordinate system

  spiralsRadius = 10;//the radius of the spirals


  stroke(175, 150, 0);//the color of the circle

  noFill();//no fill, only have stroke

  strokeWeight(1);//the weight of the stroke

  for (float angle = 0; angle < 10 *PI; angle +=.1) {

    spiralsRadius+= 2;

    x = cos(angle)*spiralsRadius;

    y = sin(angle)*spiralsRadius;//to draw spirals by using  circle equation in the polar coordinate system

    for (int i = 0; i<20; i ++) {

      pushMatrix();

      float offSet = random(PI, TWO_PI);

      rotate(offSet);

      float d = map(sin(offSet), -1, 1, 20, 40);

      ellipse(x, y, 10, 10);

      popMatrix();//change the code of Jerome Herr http://www.openprocessing.org/sketch/161010
    }
  }

  popMatrix();
}



