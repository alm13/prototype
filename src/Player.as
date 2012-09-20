package  
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	/**
	 * ...
	 * @author Alex Morast
	 */
	
	
	 
	public class Player extends FlxSprite
	{
		
		[Embed(source = '../res/player_1.png')] private var playerPNG:Class;
		
		public function Player(_x:int, _y:int) 
		{
			super(_x, _y);
			loadGraphic(playerPNG, true, true, 16, 33, true);
			addAnimation("walk", [0, 1, 2, 1], 8, true);
			addAnimation("jump", [2], 0, false);
			
						//	Enable the Controls plugin - you only need do this once (unless you destroy the plugin)
			if (FlxG.getPlugin(FlxControl) == null)
			{
				FlxG.addPlugin(new FlxControl);
			}
			
			
			//	Add this sprite to the FlxControl plugin and tell it we want the sprite to accelerate and decelerate smoothly
			FlxControl.create(this, FlxControlHandler.MOVEMENT_ACCELERATES, FlxControlHandler.STOPPING_DECELERATES, 1, true, false);
			
			//	Sprite will be controlled with the left and right cursor keys
			FlxControl.player1.setCursorControl(false, false, true, true);
			
			//	And SPACE BAR will make them jump up to a maximum of 200 pixels (per second), only when touching the FLOOR
			FlxControl.player1.setJumpButton("SPACE", FlxControlHandler.KEYMODE_PRESSED, 1000, FlxObject.FLOOR, 250, 200);
			
			//	Because we are using the MOVEMENT_ACCELERATES type the first value is the acceleration speed of the sprite
			//	Think of it as the time it takes to reach maximum velocity. A value of 100 means it would take 1 second. A value of 400 means it would take 0.25 of a second.
			FlxControl.player1.setMovementSpeed(1000, 0, 200, 200, 400, 0);
			
			//	Set a downward gravity of 400px/sec
			FlxControl.player1.setGravity(0, 400);
			
		}
		
		override public function update():void {
			super.update();		
			
			//x = x + 3;
			
			if (velocity.y < 0)
			{
				play("jump");
			}else {
				play("walk");
			}
			
		}
		
	}

}