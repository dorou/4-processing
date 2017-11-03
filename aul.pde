int x,y,r;
int z,f,t;
int w,e,u;

float alf;
color c=color(213,62,7);
color b=color(19,136,8);
color d=color(42,82,190);
color o=color(245,241,5);
void setup()
{
  size (640,480);

r=200;
t=150;
u=100;
}
void draw()
{
  background(c);
  alf=alf+1;
  
  x=300+round(r*sin(PI*alf/180));
  y=300+round(r*cos(PI*alf/180));
  z=200+round(t*cos(PI*alf/180));
  f=200+round(t*sin(PI*alf/180));
  w=100+round(u*sin(PI*alf/180));
  e=100+round(u*cos(PI*alf/180));
  fill (b);
  ellipse(x, y, 50, 50);
  fill (d);
  ellipse(z, f, 40, 40);
  fill (o);
  ellipse(w, e, 30, 30);
  triangle(x,50,x,20,x,30);
}