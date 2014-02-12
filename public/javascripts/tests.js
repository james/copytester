var time_start, time_end, time_taken;
$(function() {
  $("#test > div").hide();
  $("#test #intro").show();
  $("#test .start-test").on("click", function () {
    time_start =  Number(new Date());
    $("#test #intro").hide();
    $("#test #copy").show();
  });
  $("#test .finish-test").on("click", function () {
    time_end =  Number(new Date());
    $("#test #copy").hide();
    $("#test #questions").show();
    time_taken = time_end - time_start;
    $("#response_time_taken").val(time_taken);
  });  
});
