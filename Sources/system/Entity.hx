package system;
import system.Component;
import kha.graphics2.Graphics;
class Entity{
	public var components:Map<String,Component>;
	
	public function new(){
		components = new Map<String,Component>();
	}

	public function update(){
		for (each in components.keys()){
			components[each].update();
		}
	}

	public function render(g:Graphics){
		for (each in components.keys()){
			components[each].render(g);
		}		
	}    

    public function addComponent(Component:Component):Bool{
        if(!components.exists(Component.name)){
            Component.entity = this;
            components[Component.name] = Component;
            return true;
        }

        trace("Component already exists :"+Component.name);
        return false;
    }

    public function getComponent(Component:String):Dynamic{
        return components[Component];
    }

    public function removeComponent(ComponentName:String){
        components.remove(ComponentName);
    }

}