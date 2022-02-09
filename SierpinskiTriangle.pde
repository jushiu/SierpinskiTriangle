public void sierpinski(int x,int y, int len) {
  if(len <= 10) {
    fill(236, 0, 0);
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
   else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
   }
}
public void setup() {
  size(400,400);
  stroke(23, 123, 255);
}
public void draw() {
  sierpinski(0,400,400);
}
