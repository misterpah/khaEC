package components;
import system.Component;
import system.Entity;

class Collision extends Component{
	var x:Float;
	var y:Float;
	var w:Float;
	var h:Float;
	var cur_entity:Entity;

	override public function new(cur_entity:Entity){
		super();
		this.name = "Collision";
		this.cur_entity = cur_entity;
		try{
			var s = this.cur_entity.getComponent("Sprite");
			this.x = s.x;
			this.y = s.y;
			this.w = s.w;
			this.h = s.h;
		}
		catch (e:Dynamic){
			throw "this component require sprite component";
		}
	}


	public function is_touching(external_entity:Entity){
		var ext = external_entity.getComponent("Collision");
		if ((this.x > ext.x) && (this.x < ext.x+ext.w)){
			if ((this.y > ext.y) && (this.y < ext.y+ext.h)){
				return true;
			}
		}
		return false;
	}

	override public function update(){
		super.update();
		var s = this.cur_entity.getComponent("Sprite");
			this.x = s.x;
			this.y = s.y;
			this.w = s.w;
			this.h = s.h;
	}
}