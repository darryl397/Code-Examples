﻿package  {	import flash.display.MovieClip;	import flash.events.Event;		public class NotifyMe extends MovieClip {		public function NotifyMe() {			stage.addEventListener(Event.ADDED, notifyMe);			stage.addEventListener(Event.REMOVED, notifyMe);			craeteAndDeleteCircle();		}		private function notifyMe(e:Object){			trace("Object Name: " + e.target.name +", Event: " + e.type);		}		// U T I L I T Y  F U N C T I O N S		private function craeteAndDeleteCircle():void{			// Creates a Circle			var circle:MovieClip = new MovieClip();			circle.graphics.beginFill(0xFF0000);			circle.graphics.drawCircle(0,0,50);			circle.x = 50;			circle.y= 50;						// adds circle to MainTimelines's display stack			addChild(circle);						trace("Parent of circle: " +circle.parent); // Display: [object MainTimeline]			trace("Grandparent of circle: "+circle.parent.parent); // Display: [object Stage]						// removes circle from the MainTimeline's display stack			removeChild(circle);		}	}	}