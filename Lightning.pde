int x, y;
boolean drawing = false;
void setup() {
  size(800, 600);
  background(0);
  stroke(255, 255, 200);
  strokeWeight(2);
 frameRate(100000000);
 noStroke();
  fill(74,73,73);   
ellipse(30, 30, 150, 100);
  ellipse(150, 20, 140, 90);
  ellipse(250, 20, 130, 80);
  ellipse(350, 20, 150, 100);
  ellipse(450, 40, 140, 90);
  ellipse(550, 10, 140, 90);
  ellipse(650, 30, 130, 80);
  ellipse(750, 10, 150, 100);



  
}
void draw() {
noStroke();
  fill(74,73,73); 
   ellipse(30, 30, 150, 100);
  ellipse(150, 20, 140, 90);
  ellipse(250, 20, 130, 80);
  ellipse(350, 20, 150, 100);
  ellipse(450, 40, 140, 90);
  ellipse(550, 10, 140, 90);
  ellipse(650, 30, 130, 80);
  ellipse(750, 10, 150, 100);

  // fade
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  if (drawing) {
    stroke(255, 255, 200);
    strokeWeight(2);
    int dx = (int)(Math.random() * 19) - 9;  // -9 to 9, horizontal 
    int dy = (int)(Math.random() * 9) + 1;   // 1–9, moving down
    int newX = x + dx;
    int newY = y + dy;
    line(x, y, newX, newY);
    x = newX;
    y = newY;
    // stop at bottom of screen
    if (y > height) {
      drawing = false;
    }
  }
  noStroke();
  fill(74,73,73); 
   ellipse(30, 30, 150, 100);
  ellipse(150, 20, 140, 90);
  ellipse(250, 20, 130, 80);
  ellipse(350, 20, 150, 100);
  ellipse(450, 40, 140, 90);
  ellipse(550, 10, 140, 90);
  ellipse(650, 30, 130, 80);
  ellipse(750, 10, 150, 100);

}
void mousePressed() {
  // start new
  background(173, 216, 230);
  x = width / 2;
  y = 0;
  drawing = true;
}



