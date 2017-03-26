float a =0;
boolean stop = false;
ArrayList<doboz> lista;
void setup() {
  size(400, 400, P3D);
  lista = new ArrayList<doboz>();
  doboz b = new doboz(0, 0, 0, 200);
  lista.add(b);
}
void mousePressed() {
  ArrayList<doboz> next = new ArrayList<doboz>();
  for (doboz b : lista) {
    ArrayList<doboz> newdobozes = b.generate();
    next.addAll(newdobozes);
  }
  lista =next;
}

void draw() {
  background(51);
  stroke(255);
  //noStroke();
  //noFill();
  lights();

  translate(width/2, height/2);
  if (stop) {
    rotateX(a);
    rotateY(a);
    rotateZ(a);
  }
  for (doboz b : lista) {
    b.show();
  }
  a += 0.01;
}
void keyPressed() {
  stop = !stop;
}