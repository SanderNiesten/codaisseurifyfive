function destroySong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/api/artists/songs/" + songId,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[song-id="'+songId+'"]').remove();
  });
}
