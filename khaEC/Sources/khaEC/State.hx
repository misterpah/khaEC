package khaEC;
import kha.graphics2.Graphics;
class State{
	public var name:String;
	public var _change_state_flag:Bool;
	public var _change_state_flag_stateobj:State;
	public function new(){
		this.name = "default";
		this._change_state_flag = false;
	}

	public function update(){
	}

	public function destroy(){
	}
	public function render(g:Graphics){
	}

	public function change_state(newState:State){
		_change_state_flag  = true;
		_change_state_flag_stateobj = newState;

	}
}