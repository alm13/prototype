package
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Alex Morast
	 */

	public class MenuState extends FlxState
	{
		
		private var playButton:FlxButton;
		private var multiplayerButton:FlxButton;
		private var scoreButton:FlxButton;
		private var tutorialButton:FlxButton;
		private var storyButton:FlxButton;
		private var creditsButton:FlxButton;
		private var Title:FlxText;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff000000;
			
			//add(sf);
			
			Title = new FlxText(0, FlxG.height / 10 - 30, FlxG.width, "Space Vikings");
			Title.alignment = "center";
			Title.size = 45;
			add(Title); 
			
			playButton = new FlxButton(FlxG.width/2-40, FlxG.height / 3 + 20, "Play", onPlay);
			createButton(playButton);
			add(playButton);
			
			FlxG.mouse.show();			
		}
		
		override public function update():void
		{
			super.update();	
		}
		
		private function createButton(b:FlxButton):void
		{
			b.soundOver = null;
			b.color = 0xffD4D943;
			b.label.color = 0xffD8EBA2;
		}
		//protected function onSite():void
		//{
			
		//	FlxU.openURL("http://example.com/");  //replace with your site's URL 
		//}
		
		protected function onPlay():void
		{
			FlxG.fade(0xff000000, 1, loadPlayState);
		}
		
		protected function loadPlayState():void
		{
			playButton.exists = false;
			FlxG.switchState(new PlayState());
		}
		
		//protected function onScore():void 
		//{
		//	scoreButton.exists = false;
		//	FlxG.switchState(new HighscoreState());
		//}
		
	}
}

