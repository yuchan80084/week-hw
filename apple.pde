void apple_(float x,float y,float d){
  strokeWeight(1);
  fill(255);
  ellipse(x,y+d*4,d*12,d*5);
  ellipse(x,y+d*4,d*8,d*3);
  fill(255,0,0);
  circle(x,y,d*10); 
  arc(x,y-d*3,d*2,d,0,PI);
  strokeWeight(4);
  line(x,y-d*4,x,y-d*5/2);
}
