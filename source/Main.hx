package;

import flixel.FlxGame;
import openfl.display.FPS;
import openfl.display.Sprite;
#if typebuild
import plugins.ExamplePlugin;
import plugins.ExamplePlugin.ExampleCharPlugin;
#end
class Main extends Sprite
{
	public function new()
	{
		#if typebuild
			// god is dead
			ExamplePlugin;
			ExampleCharPlugin;
		#end
		super();
		addChild(new FlxGame(0, 0, TitleState, 1, OptionsHandler.options.fpsCap, OptionsHandler.options.fpsCap, true));
		#if !mobile
		addChild(new FPS(10, 3, 0xFFFFFF));
		addChild(new MemoryCounter(10, 3, 0xFFFFFF));
		#end
	}
}
