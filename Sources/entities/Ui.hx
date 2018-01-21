package entities;
import system.Entity;
import zui.*;
import components.zui.Hello;
import kha.Assets;
class Ui extends Entity{
	var ui:Zui;
	var loadEverythingFlag:Bool;
	public function new(){
		super();
		Assets.loadEverything(loadingFinished);
	}
	public function loadingFinished(){
		ui = new Zui({font: Assets.fonts.DroidSans});
		loadEverythingFlag = true;
		addComponent(new Hello(ui));
	}	
}