package components;
import system.Component;

class Health extends Component{
	var hp:Int;
	override public function new(){
		super();
		this.name = "Health";
	}

	override function set(key:String, value:Dynamic){
		if (key == "hp"){
			this.hp = value;
		}
	}
}