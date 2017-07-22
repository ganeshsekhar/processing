class Ball{

  
  float bx,by,br;
  float xspeed,yspeed;
  color c;
  
  Ball(float rb, color cr){
  
    br = rb;
    bx = random(width);
    by = random(height);
    xspeed = random(-5,5);
    yspeed = random(-5,5);
    c = cr;
      
  }
  
  void move(){
  
    bx += xspeed;
    by += yspeed;
    
    //horizontal edges
    if(bx > width || bx < 0){
    xspeed *= -1;
    }
    
    //vertical edges
    if(by > height || by < 0){
    yspeed *= -1;
    }
    
  }
  
  void highlight(){
  
    c = color(255);
    
  }
  
  void display(){
  
    noStroke();
    fill(c);
    ellipse(bx,by,br*2,br*2);
    c = color(55);
  }
  
  boolean intersect(Catcher b){

    float d = dist(bx,by,b.cx, b.cy);
    if(d < br + b.rad){
    return true;
    }else {
    return false;
    }
    
    }
     
  
  

     
  }