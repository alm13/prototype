package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author team
	 */
	public class Bullet extends FlxSprite
	{
		
		[Embed(source = "../res/Bullet_Right.png")] public var bulletPNG:Class;
		
		public function Bullet(_x:int, _y:int) 
		{
			super(_x, _y);
			loadGraphic(bulletPNG, true, true, 25, 16, true);
		}
		
		override public function update():void
		{
			velocity.x = 150;
		}
		
	}

}