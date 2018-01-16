package entities;
import system.Entity;
import components.Health;
import components.Sprite;
import components.Movement;
import kha.Assets;

class Player extends Entity{
	public function new(_x:Float,_y:Float){
		super();
		addComponent(new Health());
		addComponent(new Movement());
		addComponent(new Sprite(_x,_y,Assets.images.logo));
	}
	override public function update(){
		super.update();
		var m = getComponent("Movement");
		getComponent("Sprite").update_movement(m.left,m.right,m.up,m.down);
	}
}