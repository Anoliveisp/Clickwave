class oneWave{
  float x;
  float xs;
  float y;
  
  oneWave(){
  x = width+1;
  y = height/4;
  xs = 0;
  
  }
  
  void move(){
    x = x+5;
  }
  
  void show(){
    fill(255);
    stroke(0);
    //if (){
      //line(x[0],y[0],width,height/2);
    //}
     beginShape(LINES);
     vertex(0,0);
     vertex(x-50,0);
     endShape(CLOSE);
     beginShape(LINES);
     bezier(x-50,0,x,y,x,y,x+50,0);
     endShape(CLOSE);
     beginShape(LINES);
     vertex(x+50,0);
     vertex(width,0);
     endShape(CLOSE);
    
  }
void click(){
  if(x>width){
    x = 0;
  }
 y = mouseY-height/2;

}


}