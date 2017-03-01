// Andrey Oliveira
/*
This sketch is to make a wave appear upon click and attempt to add the waves together
*/
oneWave [] onewave = new oneWave[1];
AIwave [] AIWave = new AIwave [1];
float aiy, owy;
float ny, nny;
void setup(){
  size(600, 600);
    for(int i =0; i<onewave.length;i++){
    onewave[i] = new oneWave();
    AIWave[i] = new AIwave();
  }
  smooth(4);

}

void draw(){
  translate(0, height/2);
  background(145);
  for(int i =0; i<onewave.length;i++){
    onewave[i].show();
    onewave[i].move();
    AIWave[i].show();
    AIWave[i].move();
    
    if(AIWave[i].x == onewave[i].x){
    aiy=AIWave[i].y;
    owy = onewave[i].y;
    nny = update(aiy,owy);
    println(nny);
    AIWave[i].y = nny;
    AIWave[i].show();
    }
  
  }
  
}

  void mousePressed(){
 // background(34, 100, 55);
 for(int i = 0; i<onewave.length;i++){
 onewave[i].click();
 onewave[i].show();
 }
 
}
  float update(float aiy ,float owy){
  ny = aiy + owy;
  return ny;
  }