$(document).ready(function() {
  $("#login").on("click", 'a', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    var request = $.ajax({
      url: url,
    })
    request.done(function(data){
      $('.container').last().append(data);
    });
  });

  $("#join").on("click", 'a', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    console.log(url);
    var request = $.ajax({
      url: url,
    })
    request.done(function(data){
      $('.container').last().append(data);
    });
  });


  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
