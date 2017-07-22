class Catcher{
  float point = 100;  
  float rad;
  float cx, cy;
  
  Catcher(float tempR){
 
    cx = 0;;
    cy = 0;
    rad = tempR;
  
  }

  void setLocation(float tempX,float tempY){
  
    cx = tempX;
    cy = tempY;
  }
  
  void display(){ 
    
    
    noStroke();
    fill(175);
    ellipse(cx,cy,rad*2,rad*2);
       
  }
  
    void points(Ball b){
    
    float d = dist(b.bx,b.by,cx, cy);
    if(d < b.br + rad){
      
      println(point);
      
    }
    
    }
  
}