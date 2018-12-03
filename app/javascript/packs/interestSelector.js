$(function() {
  $('select#reader_collection').change(function() {
    var id = $(this).find(":selected").val();
    var params = 'some_id=' + id;


      $.ajax({
        #You could use the url set on the first select, set it to an data attribute and retrieve it here with $(select).data 'url'
        url: "/controller/action?id=" + id,
        type: 'get',
        data: $(this).serialize()
      }).success(function (data) {
        update_select(data);
      });
  });
});


function update_select(data) {
  var json = jQuery.parseJSON(data);
  var options = [];
  json.each(function (key, index) {
      options.push({text: index, value: key});
  });
  $("#select_box").replaceOptions(options);
};
