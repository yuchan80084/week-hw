void cubby(float x, float y, float d){
  cubbymain(x,y,d);
  cubbysame(x,y,d);
  cubbysame(x,y,-d);
}

void cubbymain(float mx,float my,float md){
  fill(255,54,54); //발
  ellipse(mx+75*md,my+125*md,130*md,70*md);
  ellipse(mx-75*md,my+125*md,130*md,70*md);
  fill(254,174,191); //머리
  circle(mx,my,md*300);
  fill(129,54,70); // 입
  ellipse(mx,my+25*md,17*md,25*md);
}
  
void cubbysame(float x,float y, float d){
  fill(248,153,183);
  ellipse(x-90*d,y,45*d,25*d);
  fill(0);
  ellipse(x-40*d,y-40*abs(d),40*d,80*d);
  fill(0,105,217);
  ellipse(x-40*d,y-45*abs(d),30*d,60*d);
  fill(0);
  ellipse(x-40*d,y-50*abs(d),30*d,50*d);
  fill(255);
  ellipse(x-40*d,y-57*abs(d),18*d,30*d);
}
