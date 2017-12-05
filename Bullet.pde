class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myCenterX = bob.getX();
		myCenterY = bob.getY();
		myPointDirection = bob.getPointDirection();
		
	}
}