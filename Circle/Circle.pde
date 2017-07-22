import ddf.minim.*; // minim import

//Minim initialisation
Minim minim;
AudioPlayer song;
AudioMetaData meta;


float time = 0.0;
float add = 0.01;
float x = width;
float y = 400;
float xspeed = -1;
float yspeed = 1;

void setup(){

  size(1000,500);
  
  
  minim = new Minim(this);
  
  //Song here
  song = minim.loadFile("The Chainsmokers.mp3");
  song.play();
  
    meta = song.getMetaData();


}

int ys = 15;
int yi = 15;

void draw(){

  background(random(55,180),0,0);
  float l = meta.length()/100000;
  int y = ys;
//  text("Length: " + l , 5, y+=yi);
//  text("Title: " + meta.title(), 5, y+=yi);
//  text("Album: " + meta.album(), 5, y+=yi);
//  text("Genre: " + meta.genre(), 5, y+=yi);
//  text("Composer: " + meta.composer(), 5, y+=yi);

  
  noStroke();
  for(int i = 0; i < song.bufferSize() - 1; i++)
  {
  //float n = song.mix.get(i)*50;
  }
  
  time += add;
  
  fill(240,0,0);
    for(int i = 0; i < song.bufferSize() - 1; i++)
  {
      //background(song.mix.get(i)*1000);
      smooth();

  fill(240,0,0); 
  
  //equaliser function
  float e = song.mix.get(i);
  float f = song.left.get(i);
  float g = song.right.get(i);




  ellipse(width/6, height/2, f*200, f*200);
  ellipse(width/1.2, height/2, g*200, g*200);
  fill(55,55,55,150);
  ellipse(width/6, height/2, e*100, e*100);   
  fill(55,55,55);
  ellipse(width/6, height/2, e*80, e*80);
  fill(55,55,55,150);
  ellipse(width/1.2, height/2, e*100, e*100);   
  fill(55,55,55);
  ellipse(width/1.2, height/2, e*80, e*80);
      fill(200,0,0);

    
    ellipse(width/2, height/2, e*600, e*600);
    fill(55,55,55,150);
    ellipse(width/2, height/2, e*400, e*400);   
    fill(55,55,55);
    ellipse(width/2, height/2, e*380, e*380);


    
    //fill(225);
    
    //ellipse(width/2, height/2, e*500, e*500);

    //ellipse(width/2, height/2, song.left.get(i)*500, song.left.get(i)*500);
    
    //stroke(225);
    //line(width/2,height/2, x, y);
    
    
  //for(i = 0; i < song.bufferSize() - 1; i++)
  //{
    //line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    //line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
  //}
    
    x += xspeed;
    y += yspeed;
    
    if( x == 0 || x == width){
    
      xspeed *= -1;
      
    }
    
    if( y == 0 || y == height){
    
      yspeed *= -1;
      
    }
    
    
    
  }

}