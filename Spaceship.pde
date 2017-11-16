class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -16;
    yCorners[0] = -16;
    xCorners[1] = 32;
    yCorners[1] = 0;
    xCorners[2] = -16;
    yCorners[2] = 16;
    xCorners[3] = -4;
    yCorners[3] = 0;
  }
  
  public void setX(int x){myCenterX = x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y){myCenterY = y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x){myDirectionX = x;};   
  public double getDirectionX(){return (double)myDirectionX;};   
  public void setDirectionY(double y){myDirectionY = y;};   
  public double getDirectionY(){return (double)myDirectionY;};   
  public void setPointDirection(int degrees){myPointDirection = degrees;};   
  public double getPointDirection() {return (double)myPointDirection;};
  
  public void show ()  //Draw ship at the current position
  {
    fill(224, 176, 242);
    //convert degrees to radians for sin and cos
    double dRadians = myPointDirection*(Math.PI/180);
    int xRotatedTranslated, yRotatedTranslated;
    beginShape();
    for(int nI = 0; nI < corners; nI++)
    {
      //rotate and translate the coordinates of the floater using current direction
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);
      vertex(xRotatedTranslated,yRotatedTranslated);

    }

    endShape(CLOSE);
  }

}