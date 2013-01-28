$(document).ready(function(){
	
});
function get_trust(tvalue,email){
		$.ajax({
			type:'GET',
			url: '/trustvalue/'+email+'/'+tvalue,
			success: function(response){
				alert(response);
			}
		})
	}
function recommend(filmid){
		$.ajax({
			type:'GET',
			url: '/recommend/'+filmid,
			success: function(response){
				alert(response);
			}
		})
	}
