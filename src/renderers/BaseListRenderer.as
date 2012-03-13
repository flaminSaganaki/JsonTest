package renderers
{
    import flash.display.Bitmap;
    import flash.events.DataEvent;
    import flash.events.Event;
    import flash.events.MouseEvent;

    import spark.components.Image;
    import spark.components.Label;
    import spark.components.LabelItemRenderer;


    /**
     *
     * ASDoc comments for this item renderer class
     *
     */
    public class BaseListRenderer extends LabelItemRenderer
    {
        private var theImage : Image;

        public function BaseListRenderer()
        {
            super();
        }

        /**
         * @private
         *
         * Override this setter to respond to data changes
         */
        override public function set data(value : Object) : void
        {
            super.data = value;
            // the data has changed.  push these changes down in to the 
            // subcomponents here
            labelDisplay.text = value.data.title;
            if (value.data.thumbnail)
                theImage.source = value.data.thumbnail;
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
                theImage.width = 64;
                theImage.height = 64;
                addChild(theImage);
            }
            labelDisplay.addEventListener(MouseEvent.CLICK, labelClickHandler);
            // create any additional children for your item renderer here
        }

        private function imageClickHandler(event : MouseEvent) : void
        {
            dispatchEvent(new DataEvent("imageClicked", true, false, data.data.url));
        }

        private function labelClickHandler(event : MouseEvent) : void
        {
            dispatchEvent(new Event("labelClicked", true));
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
            theImage.x = 0;
            labelDisplay.x = 100;
            // layout all the subcomponents here      		
        }

    }
}
