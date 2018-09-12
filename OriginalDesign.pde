int X = -10;
int Y = 300;
int EyeX = -25;
float Mouth = TWO_PI - PI/4;
float Random = 5;
int LeftCloudX1 = 15;
int CenterCloudX1 = 35;
int RightCloudX1 = 55;
int LeftCloudX2 = 270;
int CenterCloudX2 = 295;
int RightCloudX2 = 320;
int LeftCloudX3 = 515;
int CenterCloudX3 = 535;
int RightCloudX3 = 555;
int SmallCludRadius = 25;
int SmallCludCenterRadius = 40;

void setup()
{
  frameRate(10);
  size(1000,600);
}

void LeToucan()
{
  background(132,112,255);
  fill(255,255,0);
  arc(X,400,100,100,0,Mouth,PIE);

  if(X > 1050)
  {
    X = -10;
    EyeX = -25;
  }
  else {
  X = X + 25;
  EyeX = EyeX + 25;
  Random = Random + 5;
  }
  if (Random % 10 == 0){
    Mouth = TWO_PI;
  }
  else {
    Mouth = TWO_PI - PI/4.0;
  }
  fill(0);
  ellipse(EyeX,365,10,10);
}
void Dirt()
{
  fill(139,69,19);
  rect(-25,465,5000,150);
}
void Grass()
{
  fill(34,139,34);
  rect(-25,450,5000,15);
}
void Cluds()
{
  noStroke();
  fill(255);
  ellipse(LeftCloudX1,30,SmallCludRadius,SmallCludRadius);
  ellipse(RightCloudX1,30,SmallCludRadius,SmallCludRadius);
  ellipse(CenterCloudX1,30,SmallCludCenterRadius,SmallCludCenterRadius);
  ellipse(LeftCloudX2,80,30,30);
  ellipse(RightCloudX2,80,30,30);
  ellipse(CenterCloudX2,80,45,45);
  ellipse(LeftCloudX3,120,SmallCludRadius,SmallCludRadius);
  ellipse(RightCloudX3,120,SmallCludRadius,SmallCludRadius);
  ellipse(CenterCloudX3,120,SmallCludCenterRadius,SmallCludCenterRadius);
  if (LeftCloudX1 < 1060)
  {
    LeftCloudX1 = LeftCloudX1 + 3;
    RightCloudX1 = RightCloudX1 + 3;
    CenterCloudX1 = CenterCloudX1 + 3;
  }
  else {
    LeftCloudX1 = -485;
    RightCloudX1 = -445;
    CenterCloudX1 = -465;
  }
  if (LeftCloudX2 < 1060)
  {
    LeftCloudX2 = LeftCloudX2 + 3;
    RightCloudX2 = RightCloudX2 + 3;
    CenterCloudX2 = CenterCloudX2 + 3;
  }
  else {
    LeftCloudX2 = -135;
    RightCloudX2 = -95;
    CenterCloudX2 = -115;
  }
  if (LeftCloudX3 < 1060)
  {
    LeftCloudX3 = LeftCloudX3 + 2;
    RightCloudX3 = RightCloudX3 + 2;
    CenterCloudX3 = CenterCloudX3 + 2;
  }
  else {
    LeftCloudX3 = 15;
    RightCloudX3 = 55;
    CenterCloudX3 = 35;
  }
}

void draw()
{
  LeToucan();
  Dirt();
  Grass();
  Cluds();
}