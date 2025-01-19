function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader
  var loadedImage:Bitmap = Bitmap(event.target.content);

  // This line might throw an error if event.target.content is null or not a Bitmap
  addChild(loadedImage);
}