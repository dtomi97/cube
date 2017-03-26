class doboz {
  PVector pos;
  float r; 
  float red;
  float green;
  float blue;
  doboz(float x, float y, float z, float r_) {
    pos =  new PVector(x, y, z);
    r = r_;
    red=random(255);
    green=random(255);
    blue=random(255);
  }

  ArrayList<doboz> generate() {
    ArrayList<doboz> dobozes = new ArrayList<doboz>();
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {

          int sum = abs(x) + abs(y) + abs(z);
          float newR = r/3;
          if (sum > 1) {
            doboz b = new doboz(pos.x+x*newR, pos.y+y*newR, pos.z+z*newR, newR);
            dobozes.add(b);
          }
        }
      }
    }
    return dobozes;
  }

  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    noStroke();
    fill(red, green, blue);
    box(r);
    popMatrix();
  }
}