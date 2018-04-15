package khaEC;
import kha.graphics2.Graphics;
import khaEC.Entity;
class Scene{
	public var name:String;
	var entity_stack:Array<Entity>;
	public function new(){
		this.name = "Scene";
		entity_stack = new Array<Entity>();
	}
	public function update(){
		for (each in entity_stack){
			each.update();
		}
	}
	public function destroy(){
	}
	public function render(g:Graphics){
		for (each in entity_stack){
			each.render(g);
		}
	}
	public function addEntity(obj:Entity){
		entity_stack.push(obj);
	}
}