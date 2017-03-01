class AIwave{
  float x;
  float xs;
  float y;
  float ai;
  float ow;
  float ny;
  
  AIwave(){
  x = width + 60;
  y = random(-height/6,height/6);
  xs = 0;
  
  }
  void move(){
    x=x-5;
    if(x<0){
    x=width+60;
    y = random(-height/6, height/6);
    }
  }
  void show() {
    stroke(0);
    fill(0);
    beginShape(LINES);
    vertex(width, 0);
    vertex(x+50,0);
    endShape(CLOSE);
    beginShape(LINES);
    bezier(x+50,0,x,y,x,y,x-50,0);
    endShape(CLOSE);
    beginShape(LINES);
    vertex(x-50,0);
    vertex(0,0);
    endShape(CLOSE);
    
  }

  
  
}