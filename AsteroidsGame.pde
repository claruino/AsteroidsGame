Spaceship bob; 
Stars[]  someStars = new Stars[900];

ArrayList <Asteroids> someAsteroids = new ArrayList <Asteroids>(); 
public void setup() 
{
  size(400, 400);
  
  for(int i = 0; i < someStars.length; i++)
  {
    someStars[i] = new Stars();
  }
  
  for(int i = 0; i < 100; i++)
  {
    someAsteroids.add(new Asteroids ());
  }
  
  bob = new Spaceship();
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < someStars.length; i++)
  {
    someStars[i].show();
  }
  for(int i = 0; i < someAsteroids.size(); i++)
  {
    someAsteroids.get(i).show();
    someAsteroids.get(i).move();
  }
  for(int i = 0; i < someAsteroids.size(); i++)
  {
    if(dist(bob.getX(), bob.getY(), someAsteroids.get(i).getX(), someAsteroids.get(i).getY()) < 20)
    {
      someAsteroids.remove(i);
    }
  }
}

public void keyPressed()
{
  if(key == 'h') //hyperspace
  {
    int hyperX = ((int)(Math.random()*750));
    int hyperY = ((int)(Math.random()*750));
    int hyperR = ((int)(Math.random()*360));
    
    bob.setX(hyperX);
    bob.setY(hyperY);
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.turn(hyperR);
  }
  
  if(key == 'w') //accelerate
  {
    bob.accelerate(1);
  }
  
  if(key == 'a') //turn left
  {
    bob.turn(-30);
  }
  
  if(key == 'd') //turn right
  {
    bob.turn(30);
  }
  
  if(key == 's') //stop
  {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
  
}