void d_pac(float x,float x1,float y,float y1, float d1,float d2, float ang1, float ang2)
{
    strokeWeight(7);
    fill(255,255,0);
    arc(x,y,d1,d1,ang1, ang2);
    fill(0,0,0);
    circle(x+d1/8,y-7*d1/24,d2);
    line(x,y, x+x1,y-y1);
    strokeWeight(7);
    line(x,y, x+x1,y+y1);
    strokeWeight(7);
    if (keyPressed)
    {
      if (key=='d')
      {
        noStroke();
        fill(255,255,255);
        circle(x,y,120);
        strokeWeight(7);
        fill(255,255,0);
        strokeWeight(7);
        arc(x,y,d1,d1,ang1, ang2);
        fill(0,0,0);
        strokeWeight(7);
        circle(x+d1/8,y-7*d1/24,d2);
        line(x,y, x+x1,y-y1);
        strokeWeight(7);
        line(x,y, x+x1,y+y1);
        strokeWeight(7);
       }
     else if(key=='a')
      {
        noStroke();
        fill(255,255,255);
        circle(x,y,120);
        strokeWeight(7);
        fill(255,255,0);
        arc(x,y,d1,d1,ang1+PI,ang2+PI);
        fill(0,0,0);
        circle(x-d1/8,y-7*d1/24,d2);
        line(x,y, x-x1,y-y1);
        strokeWeight(7);
        line(x,y, x-x1,y+y1);
        strokeWeight(7);
      }
     else if(key=='w')
     {
        noStroke();
        fill(255,255,255);
        circle(x,y,120); 
        strokeWeight(7);
        fill(255,255,0);
        arc(x,y,d1,d1,ang1-PI/2, ang2-PI/2);
        fill(0,0,0);
        circle(x-7*d1/24,y-d1/8,d2);
        line(x,y, x-y1,y-x1);
        strokeWeight(7);
        line(x,y, x+y1,y-x1);
        strokeWeight(7);
     }
     else if(key=='s') 
     {
        noStroke();
        fill(255,255,255);
        circle(x,y,120);
        strokeWeight(7);
        fill(255,255,0);
        arc(x,y,d1,d1,ang1-3*PI/2, ang2-3*PI/2);
        fill(0,0,0);
        circle(x+7*d1/24,y+d1/8,d2);
        line(x,y, x-y1,y+x1);
        strokeWeight(7);
        line(x,y, x+y1,y+x1);
        strokeWeight(7);
      }
    }
}
