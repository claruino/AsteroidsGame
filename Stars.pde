class Stars //note that this class does NOT extend Floater
{
  protected int starX, starY;
  protected int starColor;
  
  public Stars(){
  starX = ((int)(Math.random()*950));
  starY = ((int)(Math.random()*950));
  starColor = ((int)(Math.random()*200));
  }
  
  public void show(){
  noStroke();
  fill(starColor);
  ellipse(starX, starY, 5, 5);
  }
}