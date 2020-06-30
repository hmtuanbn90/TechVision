$(document).on('click', '.add_fields', function(){
  var id = $(this).data('id');
  var new_id = new Date().getTime();
  var field = $(this).data('fields').replace(new RegExp(id, 'gi'), new_id);
  var idHidden = $(field).find('[type="hidden"]').attr('id');
  var idText = $(field).find('[type="text"]').attr('id');
  var check = true;
  var a= $('#autocomplete').val()
  if(a.startsWith("#")){
      a = a;
	}else{
	  a = '#'+a;
	};
  $('ul[id="hashtag_name_ul"] li input[type="text"]').each(function(){
	var input = $(this).val();
	if (input == a) {
	  check = false;
	  }
	});
  if(check){
	$('#hashtag_name_ul').append(field);
	$('#' + idText).val(a);
	$('#' + idHidden).remove();
	$('#autocomplete').val('');
  }else{alert('<%= t("index.hashtager") %>');}
});
$(document).on('click', '.remove-btn', function() {
  $(this).parent().remove();
});


