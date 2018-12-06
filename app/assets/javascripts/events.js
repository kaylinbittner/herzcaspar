$(document).ready(function() {
  var data = document.getElementById('events');
  if (data) {
    var json = JSON.parse(data.getAttribute('data-events'));
    $(function() {
      $('#calendar').fullCalendar({
        defaultView: 'listWeek',
        theme: true,
        themeSystem:'bootstrap3',

        views: {
          listDay: { buttonText: 'list day' },
          listWeek: { buttonText: 'list week' },
          listMonth: { buttonText: 'list month' }
        },


        header: {
          left: 'prev,next today',
          center: 'title',
          right: 'listWeek,listMonth'
        },
        events: json,

        eventClick:  function(calEvent) {
          var id = calEvent.id
          // console.log(id);
          var attend = (event) => {
            fetch(`http://localhost:3000/user_events/${id}`, {
              method: "PATCH",
              headers: {
                "Content-Type": "application/json"
              },
              body: true
            })
            $(this).css('color', 'green');
          }

          var dismiss = (event) => {
            fetch(`http://localhost:3000/user_events/${id}`, {
              method: "PATCH",
              headers: {
                "Content-Type": "application/json"
              },
              body: false
            })
            $(this).css('color', '#A31636');
          }

          $('#modalTitle').html(calEvent.title);
          $('#modalBody').html(calEvent.description +' @ '+ calEvent.location);
          $('#fullCalModal').modal();
          $('.dismiss-btn').bind('click', function() {
            console.log(id);
            console.log("dismiss");
            dismiss();
          });
          $('.attend-btn').bind('click', function() {
            console.log(id);
            console.log("attend");
            attend();
          });
        }
      });
    });
  }
})
