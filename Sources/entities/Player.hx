package entities;
import system.Entity;
import components.Health;
import components.Sprite;
import components.Movement;
import components.Collision;
import kha.Assets;

class Player extends Entity{
	public var x:Float;
	public var y:Float;
	public function new(_x:Float,_y:Float){
		super();
		this.x = _x;
		this.y = _y;
		addComponent(new Health());
		addComponent(new Movement());
		addComponent(new Sprite(x,y,Assets.images.logo));
		addComponent(new Collision(this));
		
	}
	public function tile_collision(obj:Entity){
		var touch = getComponent("Collision").is_touching(obj);
		if (touch == true){
			trace("Is Touching!");
		}
	}

	override public function update(){
		super.update();
		this.x = getComponent("Sprite").x;
		this.y = getComponent("Sprite").y;
		var m = getComponent("Movement");
		getComponent("Sprite").update_movement(m.left,m.right,m.up,m.down);
	}
}