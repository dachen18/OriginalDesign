int EllipseX = -10;
int EllipseY = -10;
int EllipseX2 = 310;
int EllipseY2 = 310;
int EllipseRadius = 10;
void setup()
{
  frameRate(30);
  size(300,300);
}
void draw(){
  //3 values changes the potential mix of RGB
  Circles(255,255,255);
}
void Circles(int x, int y, int z)
{
  background(255);
   if (EllipseX <= 150)
  {
    EllipseRadius = EllipseRadius + 5;
  }
 if (EllipseX >= 150) {
    EllipseRadius = EllipseRadius - 5;
  }
  
  if (EllipseX == 310)
  {
    EllipseX = -10;
    EllipseY = -10;
    EllipseX2 = 310;
    EllipseY2 = 310;
    EllipseRadius = 10;
  }
  else 
  //EllipseX/Y Left/Top
  //EllipseX2/Y2 Right/Bottom
    fill(random(x),random(y),random(z));
    ellipse(EllipseX,150,EllipseRadius,EllipseRadius);
    ellipse(150,EllipseY,EllipseRadius,EllipseRadius);
    ellipse(EllipseX2,150,EllipseRadius,EllipseRadius);
    ellipse(150,EllipseY2,EllipseRadius,EllipseRadius);
    ellipse(EllipseX,EllipseY,EllipseRadius,EllipseRadius);
    ellipse(EllipseX,EllipseY2,EllipseRadius,EllipseRadius);
    ellipse(EllipseX2,EllipseY2,EllipseRadius,EllipseRadius);
    ellipse(EllipseX2,EllipseY,EllipseRadius,EllipseRadius);
     EllipseX = EllipseX + 5;
     EllipseY = EllipseY + 5;
     EllipseX2 = EllipseX2 - 5;
     EllipseY2 = EllipseY2 - 5;
}