class Drop{

  float x,y;
  float speed;
  color c;
  float r;
  
  Drop(){
  
    r = 8;
    x = random(width);
    y = random(height);
    speed = random(1,5);
    c = color(50,100,150);  
  
  }
  
  void move(){
  
    y += speed;
  
  }

  boolean reachedBottom(){
  
    if(y > height+r*4){
      return true;
    }else{
      return false;
    }
    
  }
  
  void display(){
  
    fill(c);
    noStroke();
    ellipse(x,y,r*2,r*2);
  
  
  }




}