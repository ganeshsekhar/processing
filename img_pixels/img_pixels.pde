PImage img;
int p1,p2;
int point = 12;
int gap = point;
void setup() {
size(816,612);
img = loadImage( "00.jpeg");
background(0);
smooth();
}
void draw() {
// Pick a random point
img.resize(width,height);
int x = int(p1);
int y = int(p2);
int loc = x + y*img.width;
// Look up the RGB color in the source image
loadPixels();
float r = red(img.pixels[loc]);
float g = green(img.pixels[loc]);
float b = blue(img.pixels[loc]);
noStroke();

// Draw an ellipse at that location with that color
fill(r,g,b);
ellipse(x+5,y+5,point,point);
if( p1 <= img.width){
p1 += gap;
}
if( p1 >= img.width){
p2 += gap;
p1 = 0;

}

if( p2 >= height){
save("art4.jpg");

exit();
}

}