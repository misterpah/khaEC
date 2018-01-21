package components;
import system.Component;
import kha.input.Keyboard;
import kha.input.KeyCode;

class Movement extends Component{
	var up:Bool;
	var down:Bool;
	var left:Bool;
	var right:Bool;
	var key_Up:KeyCode;
	var key_Down:KeyCode;
	var key_Left:KeyCode;
	var key_Right:KeyCode;
	override public function new(key_Up:KeyCode = null,key_Down:KeyCode = null,key_Left:KeyCode = null,key_Right:KeyCode = null){
		super();
		this.key_Up = KeyCode.Up;
		if (key_Up != null){
			this.key_Up = key_Up;
		}
		this.key_Down = KeyCode.Down;
		if (key_Down != null){
			this.key_Down = key_Down;
		}
		this.key_Left = KeyCode.Left;
		if (key_Left != null){
			this.key_Left = key_Left;
		}
		this.key_Right = KeyCode.Right;
		if (key_Right != null){
			this.key_Right = key_Right;
		}					
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