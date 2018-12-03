function setUpQuit(){
  var chatQuit = document.querySelector('.quit-chat');
  var chatWindow = document.querySelector('.chat-window');
  var testId = document.getElementById('test');
  chatQuit.addEventListener('click', function(){
    if (testId.classList.contains("test-id-closed")) {
      chatQuit.innerHTML = "x"
    }
    else {
      chatQuit.innerHTML = "chat"
    }
    testId.classList.toggle("test-id-closed");
    chatWindow.classList.toggle("chat-window-closed");
    // testId.innerHTML = "";
  })
}

setUpQuit();
export { setUpQuit };
