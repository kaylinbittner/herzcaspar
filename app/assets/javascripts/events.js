$( document ).ready(function() {
  var data = document.getElementById('events');
  if (data) {
    var json = JSON.parse(data.getAttribute('data-events'));
    $(function() {
      $('#calendar').fullCalendar({
        defaultView: 'listWeek',
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

        eventClick:  function(calEvent, jsEvent, view) {
                $('#modalTitle').html(calEvent.title);
                $('#modalBody').html(calEvent.description + ' @ '+calEvent.location);
                $('#fullCalModal').modal();
            }
      });
    });
  }
})
