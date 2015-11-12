$(document).ready(function() {
  var formOnPage = 0

  $("#login").on("click", 'a', function(e){
    if (formOnPage === 0){
      e.preventDefault();
      var url = $(this).attr('href');
      formOnPage +=1
      var request = $.ajax({
        url: url,
      })
      request.done(function(data){
        formOnPage = 0
        $('.container').append(data);
      });
    }
    });

  $("#join").on("click", 'a', function(e){
     if (formOnPage === 0){
      e.preventDefault();
      var url = $(this).attr('href');
      formOnPage +=1
      var request = $.ajax({
        url: url,
      })
      request.done(function(data){
        formOnPage = 0
        $('.container').last().append(data);
      });
    }
  });

  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
