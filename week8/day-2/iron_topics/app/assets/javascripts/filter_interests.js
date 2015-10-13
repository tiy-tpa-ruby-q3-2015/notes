$(document).ready(function()
{
  $("#interest_level").change(function()
  {
     var level    = $(this).val();
     var topic_id = $(this).data("topic-id");

     $.ajax('/interests/filter', {
       method: 'POST',
       data: {
         topic_id: topic_id,
         level: level
       }
     })
  });
});
