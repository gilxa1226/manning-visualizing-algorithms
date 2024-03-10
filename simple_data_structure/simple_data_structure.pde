int[] intarry;

void setup() {
  randomSeed(256);
  size(640, 340);
  intarry = new int[width];
  for (int i = 0; i < width; i++) {
    intarry[i] = int(random(0, 200));
  }
}

void draw() {
  colorMode(HSB, 200);
  for(int i = 0; i < 200; i++) {
    fill(intarry[i], intarry[i], intarry[i]);
    rect(i*width/200, height, width/200, -intarry[i]);
  }
}
