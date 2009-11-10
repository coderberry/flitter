// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $('#search_submit_button').click(function() {
    $(this).closest('form').submit();
  })
});