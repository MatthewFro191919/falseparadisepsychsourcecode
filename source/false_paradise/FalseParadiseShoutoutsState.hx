package false_paradise;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;

class FalseParadiseShoutoutsState extends FlxTransitionableState
{
	override function create()
	{
		var credits = new FlxSprite().loadGraphic('mod:mod_assets/FalseParadiseMod/preload/weeks/credits.png');
		credits.antialiasing = true;
		add(credits);
		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		if (PlayerSettings.player1.controls.ACCEPT)
			FlxG.switchState(MainMenuState.Create());
	}
}
