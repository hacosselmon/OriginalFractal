public void setup()
{
  size(600,600);
  background(0);
  ring(300,300,180);
}

public void ring(int x, int y, int len)
{
  if (len <20)
  {
    noFill();
    stroke(255,0,0);
    ellipse(x, y, 0, 0);
  }
  else
  {
   noFill();
   ellipse(x,y,len,len);
   ring(x-len,y,len/2);
   ring(x+len, y, len/2);
   ring(x+2*len, y, len/2);
   ring(x-2*len, y, len/2);
   ring(x+len, y+len, len/2);
   ring(x-len, y-len, len/2);
   ring(x-len, y+len, len/2);
   ring(x+len, y-len, len/2);
  }
}