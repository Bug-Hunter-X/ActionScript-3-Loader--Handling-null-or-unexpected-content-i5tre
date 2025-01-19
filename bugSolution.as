function handleComplete(event:Event):void {
  var loadedContent:Object = event.target.content;

  if (loadedContent is Bitmap) {
    var loadedImage:Bitmap = Bitmap(loadedContent);
    addChild(loadedImage);
  } else {
    // Handle the case where content is not a Bitmap
    trace("Error: Loaded content is not a Bitmap.");
    // Optionally display an error message to the user
    // Optionally load a default image
  }
} 

//For more robust error handling consider using try...catch blocks
function handleComplete(event:Event):void {

try{
  var loadedImage:Bitmap = Bitmap(event.target.content);
  addChild(loadedImage);
}catch(error:Error){ 
  trace("Error loading image: "+error.message);
}
} 