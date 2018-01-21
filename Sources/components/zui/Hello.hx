package components.zui;
import system.Component;
import zui.*;
import kha.graphics2.Graphics;
class Hello extends Component{
	var ui:Zui;
	override public function new(_ui:Zui){
		super();
		this.ui = _ui;
		this.name = "HelloZui";
	}

	override function set(key:String, value:Dynamic){
		super.set(key,value);
	}
	override public function render(g:Graphics){
		ui.begin(g);
		if (ui.window(Id.handle(), 10, 10, 200, 200, true)) {
			if (ui.button("Hello Zui!")) {
				trace("World");
			}
		}
		ui.end();
	}

}

