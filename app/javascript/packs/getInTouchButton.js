function getInTouch(){
  var getInTouchButton = document.findElementById('getInTouch');
  getInTouchButton.addEventListener('click', function()){
    if (@conversation.present?) {
      <% redirect_to conversation_path(@conversation) %>
    }
    else {
      <% redirect_to conversations_path, method: post %>
    }
  }
}
