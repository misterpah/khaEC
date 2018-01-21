package;

import kha.Framebuffer;
import kha.Image;
import kha.Scheduler;
import kha.System;
import kha.Scaler;

import Central;

class Project {
	private var backbuffer: Image;
	var central:Central;
	public static inline var screenWidth = 1024;
	public static inline var screenHeight = 768;
	var loadEverythingFlag:Bool = false;
	
	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
		central = new Central();
		backbuffer = Image.createRenderTarget(screenWidth, screenHeight);
	}

	function update(): Void {
		central.update();
	}

	public function render(framebuffer:Framebuffer):Void {
		var g = backbuffer.g2;
		g.begin();
		central.render(g);
		g.end();

		framebuffer.g2.begin();
		Scaler.scale(backbuffer, framebuffer, System.screenRotation);
		framebuffer.g2.end();		
	}

}
