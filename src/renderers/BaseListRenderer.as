package renderers
{
    import events.EventExtension;
    
    import flash.display.Bitmap;
    import flash.events.DataEvent;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.text.engine.FontWeight;
    
    import mx.graphics.BitmapFillMode;
    
    import spark.components.Button;
    import spark.components.Callout;
    import spark.components.CalloutButton;
    import spark.components.Image;
    import spark.components.Label;
    import spark.components.LabelItemRenderer;
    import spark.layouts.HorizontalLayout;
    import spark.layouts.VerticalLayout;
    import spark.primitives.BitmapImage;


    /**
     *
     * ASDoc comments for this item renderer class
     *
     */
    public class BaseListRenderer extends LabelItemRenderer
    {
        private var theImage:Image;
		private var messageLabel:Label;
		private var voteButton:CalloutButton;
		
		private var voteButtons:Array= [
			{Button:"Up"},
			{Button:"Down"} ];
		
        public function BaseListRenderer()
        {
            super();
			height = 85;
			
        }

        /**
         * @private
         *
         * Override this setter to respond to data changes
         */
        override public function set data(value : Object) : void
        {
            super.data = value;
			var ups:int = value.data.ups - value.data.downs;
			var votes:String = String(ups);
		
			var messageString:String = "Submitted " + value.data.created + " by " + value.data.author + " to " + value.data.subreddit; 
            // the data has changed.  push these changes down in to the 
            // subcomponents here
            labelDisplay.text = value.data.title;
			messageLabel.text = messageString;
			voteButton.label = value.data.score;
			
            if (value.data.thumbnail) {
                theImage.source = value.data.thumbnail;
			}
			else  theImage.source = null;
        }

        /**
         * @private
         *
         * Override this method to create children for your item renderer
         */
        override protected function createChildren() : void
        {
            super.createChildren();
            if (!theImage)
            {
                theImage = new Image();
                theImage.addEventListener(MouseEvent.CLICK, imageClickHandler);
                theImage.width = 70;
                theImage.height = 70;
                addChild(theImage);
            }
			
			messageLabel = new Label();
			messageLabel.width = 500;
			messageLabel.height = 20;
			addChild(messageLabel);
			
			voteButton = new CalloutButton();
			var upButton:Button = new Button();
			var downButton:Button =  new Button();
			upButton.setStyle("icon", "renderers/thumbsUp.png");
			upButton.addEventListener(MouseEvent.CLICK, voteUp);
			downButton.setStyle("icon", "renderers/thumbsDown.png");
			voteButton.calloutLayout = new VerticalLayout;;
			voteButton.calloutContent = [upButton, downButton]; 			
			voteButton.width = 55;
			voteButton.height = 55;
			addChild(voteButton);
			voteButton.setStyle("fontSize", "12");
			voteButton.addEventListener(MouseEvent.CLICK, voteClickHandler);
			
			labelDisplay.width = 700;
			labelDisplay.height = 30;
            labelDisplay.addEventListener(MouseEvent.CLICK, labelClickHandler);
			//labelDisplay.setStyle("fontWeight", "bold");
			labelDisplay.setStyle("fontSize", "20");
			
			addEventListener(MouseEvent.CLICK, backdropClickHandler);
            // create any additional children for your item renderer here
        }
		
		private function backdropClickHandler(event : MouseEvent) : void
		{
			dispatchEvent(new EventExtension("backdropClicked",data.data, true, false));
		}
		
		private function imageClickHandler(event : MouseEvent) : void
		{
			dispatchEvent(new EventExtension("imageClicked",data.data, true, false));
		}

        private function labelClickHandler(event : MouseEvent) : void
        {
            dispatchEvent(new EventExtension("labelClicked",data.data, true, false));
        }
		
		private function voteClickHandler(event:MouseEvent):void
		{
			dispatchEvent(new Event("voteClicked", true));
		}
		
		private function voteUp(event:MouseEvent):void
		{
			dispatchEvent(new EventExtension("upvoteClicked",data.data, true, false));
		}

        /**
         * @private
         *
         * Override this method to change how the item renderer
         * sizes itself. For performance reasons, do not call
         * super.measure() unless you need to.
         */
        override protected function measure() : void
        {
            super.measure();
            // measure all the subcomponents here and set measuredWidth, measuredHeight, 
            // measuredMinWidth, and measuredMinHeight      		
        }

        /**
         * @private
         *
         * Override this method to change how the background is drawn for
         * item renderer.  For performance reasons, do not call
         * super.drawBackground() if you do not need to.
         */
        override protected function drawBackground(unscaledWidth : Number, unscaledHeight : Number) : void
        {
            super.drawBackground(unscaledWidth, unscaledHeight);
            // do any drawing for the background of the item renderer here      		
        }

        /**
         * @private
         *
         * Override this method to change how the background is drawn for this
         * item renderer. For performance reasons, do not call
         * super.layoutContents() if you do not need to.
         */
        override protected function layoutContents(unscaledWidth : Number, unscaledHeight : Number) : void
        {
            //super.layoutContents(unscaledWidth, unscaledHeight);
            theImage.x = 10;
			theImage.y = 7.5;
			theImage.scaleMode = BitmapFillMode.SCALE;
			//theImage.fillMode = "stretch";
            labelDisplay.x = 90;
			labelDisplay.y = 7.5;
		
			messageLabel.x = 92;
			messageLabel.y = 38;
			
			voteButton.x = 960;
			voteButton.y = 17;
			
            // layout all the subcomponents here      		
        }

    }
}
