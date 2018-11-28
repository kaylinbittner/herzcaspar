$( document ).ready(function() {
  let data = document.getElementById('events');
  let json = JSON.parse(data.getAttribute('data-events'));
  $(function() {
    $('#calendar').fullCalendar({
      height: 600,
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
              $('#modalBody').html(calEvent.description + ' @ '+calEvent.location );
              $('#fullCalModal').modal();
          }
    });
  });
})




