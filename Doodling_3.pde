float hue = 0;


void setup() {
  size(500, 500, P3D);
  noStroke();
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  hue = hue + 1;
  if (hue > 360) {
    hue = 0;
  }
  fill(hue, 90, 100);
  lights();
  background(0);
  translate(width/2, height/2, -height);
  float rz = map(mouseY, 0, height, 0, PI);
  float ry = map(mouseX, 0, width, 0, HALF_PI);
  rotateZ(rz);
  rotateY(ry);
  for (int y = -1; y <= 1; y++) {
    for (int x = -1; x <= 1; x++) {
      for (int z = -1; z <= 1; z++) {
        pushMatrix();
        translate(100*x, 100*y, -100*z);
        box(15);
        popMatrix();
      }
    }
  }
}