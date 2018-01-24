package entities;
import system.Entity;
import components.Sprite;
import components.Collision;
import kha.Assets;

class Tiles extends Entity{
	public var x:Float;
	public var y:Float;
	public function new(_x:Float,_y:Float){
		super();
		this.x = _x;
		this.y = _y;
		addComponent(new Sprite(x,y,Assets.images.tiles));
		addComponent(new Collision(this));
	}
	override public function update(){
		super.update();
	}
}