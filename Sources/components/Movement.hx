package components;
import system.Component;
import kha.input.Keyboard;
import kha.input.KeyCode;

class Movement extends Component{
	var up:Bool;
	var down:Bool;
	var left:Bool;
	var right:Bool;
	override public function new(){
		super();
		up = false;
		down = false;
		right = false;
		left = false;
		this.name = "Movement";
		Keyboard.get().notify(keyDown, keyUp);
	}

	 public function keyDown(key: KeyCode) { 
		switch (key) {
		case KeyCode.Left: left = true;
		case KeyCode.Right: right = true;
		case KeyCode.Up: up = true;
		case KeyCode.Down: down = true;
		default:
		// no-op
		}
	}

  public function keyUp(key: KeyCode) { 
		switch (key) {
		case KeyCode.Left: left = false;
		case KeyCode.Right: right = false;
		case KeyCode.Up: up = false;
		case KeyCode.Down: down = false;
		default:
		//no-op
		}
	}

}