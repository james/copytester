var time_start, time_end, time_taken;
$(function() {
  $("#test > div").hide();
  $("#test #intro").show();
  $("#test .start-test").on("click", function () {
    time_start =  Number(new Date());
    $("#test #intro").hide();
    $("#test #copy").show();
  });
  $("#test .finish-questions").on("click", function () {
    if (validate_checked("#test #copy")) {
      time_end =  Number(new Date());
      $("#test #copy").hide();
      $("#test #trust_survey").show();
      time_taken = time_end - time_start;
      $("#response_time_taken").val(time_taken);
      $("#response_browser_agent_string").val(navigator.userAgent);
    }
  });
  $("form#new_response").on("submit", function(event) {
    if (validate_checked("#test #trust_survey")) {
      return true;
    } else {
      event.preventDefault();
    }
  });
});

var validate_checked = function(within) {
  var success = true;
  $.each($(within + " fieldset"), function(i, fieldset) {
    if($(fieldset).find("input:radio:checked").length == 0) {
      $(fieldset).append('<p class="error">Please supply an answer to this question.</p>');
      success = false;
    }
  });
  return success;
}