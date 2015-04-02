$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('#drawName').on('submit', function(event) {
    event.preventDefault;
    $(this).toggle();

    $.ajax({
      url: '/users/draw',
      method: 'get',
      dataType: 'html'
    }).done(function(response) {
      $('#drawResult').a
    })
  });
});


/*

So this is incomplete, but is going the right direction.  I think with a bit more
time you would have sussed this out.


 */
