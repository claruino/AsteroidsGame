Spaceship bob; 
Stars[] someStars = new Stars[900];

ArrayList <Bullet> someBullets = new ArrayList <Bullet>();
ArrayList <Asteroids> someAsteroids = new ArrayList <Asteroids>(); 
public void setup() 
{
  size(400, 400);
  background(0);
  bob = new Spaceship();
  
  for(int i = 0; i < someStars.length; i++)
  {
    someStars[i] = new Stars();
  }
  

  for(int i = 0; i < 300; i++)
  {
    someAsteroids.add(new Asteroids ());
  }

  
}
public void draw() 
{
  background(0);
  //STARS
  for(int i = 0; i < someStars.length; i++)
  {
    someStars[i].show();
  }
  
  //BULLETS
  for(int i = 0; i < someBullets.size(); i++)
  {
    someBullets.get(i).show();
    someBullets.get(i).move();
  }
  bob.show();
  bob.move();
  

  //ASTEROIDS
  for(int i = 0; i < someAsteroids.size(); i++)
  {
    someAsteroids.get(i).show();
    someAsteroids.get(i).move();
  }

  
  
  /*
  for(int i = 0; i < someAsteroids.size(); i++)
  {
    if(dist(bob.getX(), bob.getY(), someAsteroids.get(i).getX(), someAsteroids.get(i).getY()) < 10)
    {
      someAsteroids.remove(i);
    }
  }
  */
  

  for(int k = 0; k < someBullets.size(); k ++)
  {
    for(int i = 0; i < someAsteroids.size(); i++)
      if(dist(someBullets.get(k).getX(), someBullets.get(k).getY(), someAsteroids.get(i).getX(), someAsteroids.get(i).getY()) < 10)
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
  
  if(key == 'b')
  {
    someBullets.add(new Bullet(bob));
  }
  
}