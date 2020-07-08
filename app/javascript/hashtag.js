$(document).on('click', '.add_fields', function(){
  var id = $(this).data('id');
  var new_id = new Date().getTime();
  var field = $(this).data('fields').replace(new RegExp(id, 'gi'), new_id);
  var idHidden = $(field).find('[type="hidden"]').attr('id');
  var idText = $(field).find('[type="text"]').attr('id');
  var check = true;
  var nameHashtag= $('#autocomplete').val()
  if(nameHashtag.startsWith("#")){
      nameHashtag = nameHashtag;
	}else{
	  nameHashtag = '#'+nameHashtag;
	};
  $('ul[id="hashtag_name_ul"] li ').each(function(){
	var input = $(this).find('span[class="1"]').text();
  var inputa = $(this).find('input[type="text"]').val();
	if (input == nameHashtag||inputa==nameHashtag) {
	  check = false;
	  }
	});
  $('div[class="form-field "]').each(function(){
      var label = $(this).find('label').text();
      if (label == nameHashtag) {
        check = false;
      }
    });
  if(check){
	$('#hashtag_name_ul').append(field);
	$('#' + idText).val(nameHashtag);
	$('#' + idHidden).remove();
	$('#autocomplete').val('');
  }else{alert('<%= t("index.hashtager") %>');}
});
$(document).on('click', '.remove-btn', function() {
  $(this).parent().remove();
});


