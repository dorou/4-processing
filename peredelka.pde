import processing.sound.*;
SoundFile file;
int score;int k;
int dl=40;
float x=200;
float bx=200;
float by=400;
float rnd1=random(555);
float rnd2=random(555);
color c;
float y=200;
int i;
boolean strike=false;
float[] buX;
float[] buY;
void setup()
{
  buX=new float[1000];
  buY=new float[1000];
  
  for (int i=0;i<100;i++)
  {
    buX[i]=random(560);
    buY[i]=random(560);
  }
size(600,600);
}

void keyPressed()

 {
   if (keyCode==87){y=y-10;}   //вверх W
 if (keyCode==83){y=y+10;}   //вниз S 
 if (keyCode==68){x=x+10;}   //вправо D
 if (keyCode==65){x=x-10;}  //влево A  
 }
void draw()
{
  if (x<0 || y<0)
  {x= height/2; y= width/2;}
  if (x>600 || y>600)
  {x= height/2; y= width/2;}      //возврат
   
  text("Score:"+score,15,20);                      //  bx=rnd1;by=rnd2;
 rect(bx,by,dl,dl);
rect(x,y,dl,dl);
if (frameCount %2==0)
{
   
  background(200);
fill(0,255,0);
rect(x,y,dl,dl);

 if (x<=bx+40 && x>=bx && y<=by+40 && y>=by) 
{strike=true;
}
if (strike==true && k<3000)
{rect(bx=buX[i],by=buY[i],dl,dl);score++;k=k+1;}
else{strike=false;}
 background(200,0,0);

 if (score>200){;dl=0;rect(0,0,600,600);}

}
}