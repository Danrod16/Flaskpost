function scrollLastMessageIntoView() {
  var messages = document.querySelectorAll('.message');
  var lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}
