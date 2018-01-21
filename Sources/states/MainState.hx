package states;
import system.State;
import entities.Player;
import entities.Camera;
import kha.graphics2.Graphics;

class MainState extends State{
	var player:Player;
	var camera:Camera;
	var world_width:Float = 1000;
	var world_height:Float = 1000;

	override public function new(){
		super();
		player = new Player(10,10);
		camera = new Camera();
	}

	override public function update(){
		super.update();
		player.update();
		camera.update();
		
		if (player.x > 1024/2){
			camera.x = player.x - 1024/2;
		}
		if (player.y > 768/2){
			camera.y = player.y - 768/2;
		}		
	}

	override public function render(g:Graphics){
		super.update();
		camera.set(g);
		player.render(g);
		camera.unset(g);
	}

	override public function destroy(){
		super.destroy();
	}
}