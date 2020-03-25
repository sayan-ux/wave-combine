float f=10;
import java.util.ArrayList;
float amp=20;
float angle=0;
ArrayList<Float> wave = new ArrayList<Float>();
ArrayList<Float> wave1 = new ArrayList<Float>();
ArrayList<Float> wave2 = new ArrayList<Float>();
float x=0;
float y=0;
float c=0;
void setup() {
  size(1000, 500);
}
void draw() {
  background(0);
  
  stroke(255);
  translate(100, 100);
  

  x=-amp*sin(9*angle/f);



  y=amp*sin(PI*angle/f);
  angle++;
  c=x+y;
  f+=0.01;
  wave1.add(0,x);
  wave2.add(0,y);
  wave.add(0,c);
  beginShape();
  for (int i=0,j=0,k=0; i<wave.size() && j<wave1.size() && k<wave2.size(); i++,j++,k++) {
    noFill();
    //vertex(j, wave1.get(j));
    //vertex(k, wave2.get(k)+150);
    vertex(i, wave.get(i)+300);
    if (wave1.size()>700){
    wave1.remove(700);
  }
    if (wave2.size()>700){
    wave2.remove(700);
  }
    if (wave.size()>700){
    wave.remove(700);
  }
  }
  endShape();
  
}
