package
{
	import org.flixel.*;

	[SWF(width="640", height="480", backgroundColor="#000000")]

	[Frame(factoryClass="Preloader")]

	public class Prototype extends FlxGame
	{
		public function Prototype()
		{
			// Enable menu
			//super(320, 240, MenuState, 2, 60, 60);
			// start game directly
			super(320, 240, PlayState, 2, 60, 60);
			//super(800, 600, EndGameState, 1, 60, 60);
			forceDebugger = true;
		}
		

	}
}