Catcher catcher;
Ball[] ball = new Ball[4];
Timer timer;
Ball[] drops = new Ball[10];

color c = color(225);

void setup(){

  size(500,800);
  background(c);
  catcher = new Catcher(40);
  timer = new Timer(10000);
  timer.start();
  
  for(int i = 0; i < 4; ++i){
  
  ball[i] = new Ball(20, color(55));
  
    
    
  }
    for(int i = 0; i < 10; ++i){
  

  drops[i] = new Ball(10, color(50,100,150));
    
    
  }
  smooth();

}

void draw(){

  if(timer.isFinished()){
    exit();
  }
  
  
  background(c);
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
  
  
    
  for(int i = 0; i < 4; ++i){
    
    ball[i].display();
    
    ball[i].move();
    catcher.points(ball[i]);
  
    drops[i].display();
    drops[i].move();
  
    if(ball[i].intersect(catcher)){
      ball[i].highlight();
      background(255,0,0);

      
     }
    }
     for(int i = 0; i < 10; ++i){
       drops[i].display();
       drops[i].move();
     
     
     }

  

}