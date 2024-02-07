window.addEventListener('message', function(event) {
    if(event.data.type == "enable")
    {
        $(".googledocs").css("visibility","visible");
    }
    else
    {
        $(".googledocs").css("visibility","hidden");
    }
});

document.onkeyup = function (data) {
    if (data.which == 27) {
        setTimeout(function(){
            fetch(`https://${GetParentResourceName()}/NUIFocusOff`, {
              method: 'POST',
              headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
              },
              body: JSON.stringify({
                  close: true
              })
          }).then(resp => resp.json()).then(resp => console.log(resp));
        }, 350);
    }
};
