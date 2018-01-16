package components;
import kha.Image;
import system.Component;
import kha.graphics2.Graphics;

class Sprite extends Component{
	var x:Float;
	var y:Float;
	var image:Image;
	var l:Bool;
	var r:Bool;
	var u:Bool;
	var d:Bool;
	override public function new(_x:Float,_y:Float,_image:Image){
		super();
		this.name = "Sprite";
		this.x = _x;
		this.y = _y;
		this.image = _image;
		l = r = u = d = false;
	}

	override public function update(){
		super.update();
		if (l == true){
			x -= 10;
		}
		if (r == true){
			x += 10;
		}		
		if (u == true){
			y -= 10;
		}		
		if (d == true){
			y += 10;
		}						
	}

	public function update_movement(l:Bool,r:Bool,u:Bool,d:Bool){
		this.l = l;
		this.r = r;
		this.u = u;
		this.d = d;
	}

	override public function render(g:Graphics){
		g.drawImage(this.image,this.x,this.y);
	}

	override function set(key:String, value:Dynamic){
		if (key == "x"){
			this.x = value;
		}
		if (key == "y"){
			this.y = value;
		}
		if (key == "image"){
			this.image = value;
		}				
	}
}