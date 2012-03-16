package events
{
	import flash.events.Event;
	
	public class EventExtension extends Event
	{
		public var data:Object;
		public function EventExtension(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}