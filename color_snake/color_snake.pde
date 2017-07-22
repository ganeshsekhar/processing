int[] xpos = new int[50];
int[] ypos = new int[50];
color x;
void setup(){
  size(1080,720);
  smooth();
  frameRate(2000);
  
  x = color(random(255),random(255),random(255));
  
  for(int i = 0; i < xpos.length-1; i++){
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }
}
  void draw(){
    background(255);
    
    for(int i = 0; i < xpos.length-1; i++){
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }
    
    xpos[xpos.length-1] = mouseX;
    ypos[ypos.length-1] = mouseY;
  
  for (int i = 0; i< xpos.length; i++){
  
    noStroke();
    fill(x-i*5);
    ellipse(xpos[i],ypos[i],i,i);
  
  }
}

void keyPressed(){
  x = color(random(255),random(255),random(255));
}


void mousePressed(){
  x = color(random(255),random(255),random(255));
}