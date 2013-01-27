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
