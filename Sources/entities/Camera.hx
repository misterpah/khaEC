package entities;
import system.Entity;
import kha.graphics2.Graphics;
import kha.math.FastMatrix3;

class Camera extends Entity{
	public var x:Float;
	public var y:Float;
	var trans:FastMatrix3;
	public function new(){
		super();
		this.x =0;
		this.y = 0;
		trans = FastMatrix3.identity();
	}

	override public function update(){
		super.update();
	}

	public function set(g:Graphics){
		g.pushTransformation(trans);
		g.translate(-this.x,-this.y);
	}

	public function unset(g:Graphics){
		g.popTransformation();
	}
}