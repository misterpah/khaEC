package system;
import system.State;
import kha.graphics2.Graphics;
class Game{
	var current_state:State;

	public function new(){

	}

	public function update(){
		if (current_state._change_state_flag == true){
			current_state = current_state._change_state_flag_stateobj;
			trace(current_state);
		}		
	}
	public function render(g:Graphics){
		current_state.render(g);
	}

}