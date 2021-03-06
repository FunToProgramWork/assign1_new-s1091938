PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
PImage groundhogImg;
int x = 0;
int lightPos = 240+25;
void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg = loadImage("img/life.png");
  soldierImg = loadImage("img/soldier.png");
  robotImg = loadImage("img/robot.png");
  groundhogImg = loadImage("img/groundhog.png");
}

void draw() {
  // Enter Your Code Here
  image(bgImg,0,0);
  image(soilImg,0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  image(soldierImg,x,160);
  image(robotImg,240,240);
  strokeCap(SQUARE);
  stroke(124, 204, 25);
  line(0, 160, 640, 160);
  image(groundhogImg,280,80);
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);
  line(lightPos -40,240+37,lightPos,240+37);
  circle(590, 50, 120);
  stroke(255, 255, 0);
  circle(590, 50, 125);
  fill(253, 184, 19);
  x=x+1;
  if(x>640)
    x=-80;
    lightPos = lightPos-2;
    if(lightPos<0)
    lightPos = 240+25;
}
