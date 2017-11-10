import processing.sound.*;
SoundFile file;
int score;
int ms;
int s;
int dl = 40;
float x = 200;
float bx = 200;
float by = 400;
float rnd1 = random(555);
float rnd2 = random(555);
color c;
float y = 200;
int i;

PImage img;
PImage btlk;
PImage keks;
PImage out;
float[] buX;
float[] buY;
void setup() {
    buX = new float[1000];
    buY = new float[1000];

    for (int i = 0; i < 100; i++) {
        buX[i] = random(560);
        buY[i] = random(560);
    }

    file = new SoundFile(this, "music.mp3");
    file.play();
    size(600, 600);
    img = loadImage("kek.jpg");
    btlk = loadImage("btlk.jpg");
    keks = loadImage("keks.jpg");
    out = loadImage("out.jpg");
}

void keyPressed()

{
    c = color(0, 250, 0);
    fill(c);

}
void draw() {
    textAlign(CENTER);
    textSize(20);
    delay(10);
    if (ms <= 59) {
        text(s + ":" + ms, width / 2, 30);
        ms++;
    } else {
        s++;
        ms = 0;
        text(s + ":" + ms, width / 2, 30);
    }




    if (x < 0 || y < 0) {
        x = height / 2;
        y = width / 2;
    }
    if (x > 600 || y > 600) {
        x = height / 2;
        y = width / 2;
    } //возврат

    text("Score:" + score, 45, 25); //  bx=rnd1;by=rnd2;
    image(btlk, bx, by, dl, dl);
    image(img, x, y, dl, dl);
    if (frameCount % 2 == 0) {

        background(200);
        fill(200, 100, 34);

        rect(x, y, dl, dl);


        if (keyCode == 87) {
            y = y - 10;
        } //вверх W
        if (keyCode == 83) {
            y = y + 10;
        } //вниз S 
        if (keyCode == 68) {
            x = x + 10;
        } //вправо D
        if (keyCode == 65) {
            x = x - 10;
        } //влево A

        if (x <= bx + 40 && x >= bx && y <= by + 40 && y >= by) {
            bx = buX[i];
            by = buY[i];
            score++;
            i++;
        }


        background(200, 0, 0);


        if (s == 30 && score <= 10) {
            image(keks, 0, 0, 600, 600);
            dl = 1;
        }
        if (s == 30 && score >= 10) {
            image(out, 0, 0, 600, 600);
            dl = 1;
        }

    }
}












 

 
  