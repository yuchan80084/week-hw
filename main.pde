float [] x,y,d,vx,vy,ax,ay,ad;
float mx,my;
int state;
void setup(){
  size(900,900);
  x=new float[5];
  y=new float[5];
  d=new float[5];
  vx=new float[5];
  vy=new float[5];
  mx=150;
  my=150;
  state=0;
  for (int i=0; i<5; i++){
    d[i]=random(0.2,0.5); //커비용 랜덤 수
    x[i]=random(150*d[i],width-150*d[i]);
    y[i]=random(150*d[i],height-150*d[i]);
    vx[i]=random(1,5);
    vy[i]=random(1,5);
  }
}

void draw(){
  background(254,225,232);
  fill(0);
  textSize(100);
  text("press a",300,300);
  fill(255,174,138);
  rect(400,400,100,100);
  fill(0);
  text("a",425,475);
  if (mousePressed==true)
    if ((400<mouseX && mouseX<500) && (mouseY>400 && mouseY<500)) state=1;
  if (state==1) playing();
  }
  
void playing(){
  background(255);
  stroke(0);
  apple_(800,800,8); //맨 구석 사과 생성
  d_pac(mx,52,my,26,120,10,PI/6,11*PI/6);
  if (keyPressed){ //팩맨 움직이는 거
    if (key=='d') mx+=5;
    else if(key=='a') mx-=5;
    else if(key=='w') my-=5;
    else if(key=='s') my+=5;}
  if (mx>width) mx=0;  // 팩맨이 바깥으로 나가면 반대편에서 돌아오는거
  if (my>height) my=0;
  if (mx<0) mx=width;
  if (my<0) my=height;
  
  for (int i=0; i<5; i++){//커비 움직이는 거
    noStroke();
    cubby(x[i],y[i],d[i]);
    x[i] += vx[i];
    y[i] += vy[i];
    if (x[i]>width-150*d[i] || x[i]<150*d[i]) vx[i]=-vx[i];
    if(y[i]>height-150*d[i] || y[i]<150*d[i]) vy[i]=-vy[i]; 
    if (dist(mx,my,800,800)<40+60){ //사과랑 팩맨이랑 닿으면
      background(0);
      textSize(150);
      text("game over",140,500);
      return; //커비 정지
    }
    if (dist(x[i],y[i],mx,my)<120*d[i]+60){ //커비랑 팩맨이랑 닿으면 처음 위치로
      mx = 150; my = 150;
    }
  }
}
