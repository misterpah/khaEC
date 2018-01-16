package;
import system.Game;
import states.MainState;
class Central extends Game{
	override public function new(){
		super();
		current_state = new MainState();
	}

	override public function update(){
		super.update();
		current_state.update();
	}
}