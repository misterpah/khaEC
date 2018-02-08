package khaEC;
import khaEC.Component;
import kha.graphics2.Graphics;
class Entity{
	public var components:Map<String,Component>;
	public var exist:Bool;
	public function new(){
		components = new Map<String,Component>();
        exist = true;
	}

	public function update(){
		if (!exist) { return; }
        for (each in components.keys()){
			components[each].update();
		}
	}

	public function render(g:Graphics){
        if (!exist) { return; }
		for (each in components.keys()){
			components[each].render(g);
		}		
	}    

    public function addComponent(Component:Component):Bool{
        if (!exist) { return false; }
        if(!components.exists(Component.name)){
            Component.entity = this;
            components[Component.name] = Component;
            return true;
        }

        trace("Component already exists :"+Component.name);
        return false;
    }

    public function getComponent(Component:String):Dynamic{
        if (!exist) { return null; }
        return components[Component];
    }

    public function removeComponent(ComponentName:String){
        if (!exist) { return; }
        components.remove(ComponentName);
    }

}