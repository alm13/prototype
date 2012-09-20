package  
{
	import org.flixel.FlxGroup;
	import org.flixel.FlxTilemap;
	import org.flixel.FlxObject;
	import org.flixel.plugin.photonstorm.*;
	/**
	 * ...
	 * @author team
	 */
	public class Level extends FlxGroup
	{
		
		[Embed(source = "../res/mapCSV_Level1_Map.csv", mimeType = "application/octet-stream")] public var mapCSV:Class;
		[Embed(source = "../res/tiles.png")] public var mapTilesPNG:Class;
		[Embed(source = "../res/backdrop.png")] public var skyTilesPNG:Class;
		
		public var sky:FlxTilemap;
		public var map:FlxTilemap;
		
		public var width:int;
		public var height:int;
		
		public function Level() 
		{
			sky = new FlxTilemap;
			sky.loadMap("1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1" , skyTilesPNG, 192, 336);
			sky.setTileProperties(1, FlxObject.NONE);

			sky.scrollFactor.x = 0.9;
			add(sky);
			
			map = new FlxTilemap;
			map.loadMap(new mapCSV, mapTilesPNG, 16, 16, 0, 0, 1, 31);
			add(map);
			
			width = map.width;
			height = map.height;
		}
		
	}

}