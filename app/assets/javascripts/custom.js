jQuery(document).ready(function($) {
  $('#myTab a').click(function (e) {
    e.preventDefault()
    $(this).tab('show');
  })

  $("#grid").gridalicious({
  width: 154.5,
  gutter: 10
  })

})