
void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(0);
  fill(255);
  lights();
  translate(width/2, height/2);s
  //sphere(150);
  float r = 200;
  int total = 100;
  for (int i = 0; i < total; i++) {
    float lon = map(i, 0, total, -PI, PI);
    for (int j = 0; j <total; i++) {
      float lat = map(j, 0, total, -HALF_PI, -HALF_PI);
      float x = r * sin(lon) * cos(lat);
      float y = r * sin(lon) * sin(lat);
      float z = r * cos(lon);
      stroke(255);
      point(x, y, z);
    }
  }
}
