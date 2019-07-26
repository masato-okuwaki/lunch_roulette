$(document).on('turbolinks:load', function() {
  var add =$("#append");
   function appendShop(shop){
    var html =`<div class="center">
                 <h1 class="done">${shop.name}</h1>
                 <a href="${shop.url}" class="done" target="_blank">${shop.url}</a>
               </div>`
    add.append(html);
   }
  $('#button').on('click', function(e){
    const genre = $('#genre_select').val();
    const area = $('#area_select').val();
    console.log(area);
      $.ajax({
        type: 'GET',
        url: '/shops/search',
        data: { genre: genre,
                area: area
              },
        dataType: 'json'
      })
    .done(function(data){
      console.log(data);
      $("#append").empty();
      data.forEach(function(shop){
        appendShop(shop);
      })
    })
    .fail(function(){
      alert('しっぱい')
    })
  });
});
