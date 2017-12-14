class Asteroids extends Floater 
{
  private int myRotSpeed;
  public Asteroids()
  {
    corners = 6;
    int[] allX = {-12, -8, 8, 12, 8, -8};
    int[] allY = {0, 8, 8, 0, -8, -8};
    xCorners = allX;
    yCorners = allY;
    
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myDirectionX = (Math.random()*3) - 1.5;
    myDirectionY = (Math.random()*3) - 1.5;
    myPointDirection = Math.random()*360;
    myColor = color(79, 56, 74);
    myRotSpeed = ((int) Math.random()*2) - 1;
  }
  
  //OVERRIDING MOVE METHOD FROM FLOATER not done
  public void move ()   //move the floater in the current direction of travel
  {      
    turn((int)(myRotSpeed));
    super.move();
  }  
  
  //public void setMyRotSpeed(int rotSpeed) {myRotSpeed = rotSpeed;};
  public int getMyRotSpeed() {return myRotSpeed;};
  public void setX(int x) {myCenterX = x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y) {myCenterY = y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x){myDirectionX = x;};   
  public double getDirectionX() {return myDirectionX;};   
  public void setDirectionY(double y){myDirectionY = y;};   
  public double getDirectionY(){return myDirectionY;};   
  public void setPointDirection(int degrees){myPointDirection = degrees;};   
  public double getPointDirection(){return myPointDirection;}; 
  
}