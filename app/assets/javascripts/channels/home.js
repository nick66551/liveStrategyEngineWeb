(function() {
  App.home = App.cable.subscriptions.create("HomeChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {},
    log: function(message) {
      return this.perform('log', {
        message: message
      });
    },
    received: function(data) {
      $("#message").append(`<p class="mb-0">${data['message']}</p>`)
      var objDiv = document.getElementById("message");
      objDiv.scrollTop = objDiv.scrollHeight;
      return console.log(data['message']);
    }
  });

}).call(this);