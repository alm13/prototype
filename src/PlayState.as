package
{
	import adobe.utils.CustomActions;
	import flash.display.Sprite;
	import flash.utils.Timer;
	import org.flixel.*;
	import org.flixel.FlxCamera;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Alex Morast
	 */

	public class PlayState extends FlxState
	{
		private var level:Level;
		
		private var player:Player;
		
		private var bullets:FlxGroup;
		
		public function PlayState() 
		{
	
		}
		
		override public function create():void
		{			
			
			level = new Level();
			add(level);
			
			player = new Player(FlxG.width/2,FlxG.height/2 - 100);
			add(player);
			
			bullets = new FlxGroup();
			add(bullets);
			
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			
			//	Tell flixel how big our game world is
			FlxG.worldBounds = new FlxRect(0, 0, int.MAX_VALUE,1000);
			
			
		}
		
		override public function update():void
		{			
			super.update();
			
			
			
			FlxG.collide(player, level);
			
			if (FlxG.keys.justPressed("Y")) {
				var newBullet:Bullet = new Bullet(player.x + 10, player.y - 5);
				bullets.add(newBullet);
			}
				
		}
		
		
	
	}
}