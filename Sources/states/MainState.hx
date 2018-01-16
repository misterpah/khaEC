package states;
import system.State;
import entities.Player;
import kha.graphics2.Graphics;

class MainState extends State{
	var player:Player;

	override public function new(){
		super();
		player = new Player(10,10);
		trace("this is Main State");
	}

	override public function update(){
		super.update();
		player.update();
	}

	override public function render(g:Graphics){
		super.update();
		player.render(g);
	}

	override public function destroy(){
		super.destroy();
	}
}