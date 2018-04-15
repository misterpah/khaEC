package khaEC;
import kha.graphics2.Graphics;
class Component{
	public var name:String = "Component";
	public var entity:Entity;
	public function new(){
		// always set a name for your component
	}

	public function update(){
	}
	public function get(key:String){return 0;}
	public function set(key:String, value:Dynamic){
	}
	public function render(g:Graphics){
		
	}
}