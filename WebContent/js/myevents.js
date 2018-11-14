$( document ).ready(function() {
	var event=$("#myeven");
	$.ajax({
		"url" : "event",
		"type" : "post",
		"data" : event,
		"dataType" : "json",
		"success" : function( events, textStatus, jqXHR) {
			getId((data)=>{
				
				console.log(data);
				id =data;
				console.log(id);
			});
			setTimeout(function(){
				display_events(events,id);
			}, 2000);						
		}
	
	});
});
/***************formulaire d'ajout d'event******************/
function afficher_form(){
	var f=document.getElementById("new_event");
	if( $("#new_event").css('display') == 'none'){
		console.log(f.style.display);

		f.style.display="block";
	}
	else
		f.style.display="none";
}
/***************afficher les events******************/

function display_events(events,id){
	var i=0;
	/*var id;
	getId((data)=>{
		
		console.log(data);
		id =data;
		console.log(id);
	});*/
	console.log("idich"+id);

	
	$('#events').empty();
var event;
var bool;
	while(i<events.length){
		var avatar="../img/inconnu1.jpg";
		var photo="../img/event.png";
//var interesse="<a><span><button style='border:none;background-color:black;margin-top:10px;color:white;padding:5px;'>pas interess&eacute</button></span></a>";
		event=events[i];
		bool=deja_interesse(events,id,event[1].event_id);
if(bool==true)
	var interesse="<a><span><form action='event' method='post'>"+
	"<input type='hidden' name='id' value='"+event[1].event_id+"' /><button style='border:none;background-color:black;margin-top:10px;color:white;padding:5px;' type='submit'  name='action' value='notIntrested'>"+
	"<span class='glyphicon glyphicon-star'></span>pas interesse"+
	"</button></form></a></span>";
else
var interesse="<a><span><form action='event' method='post'>"+
"<input type='hidden' name='id' value='"+event[1].event_id+"' /><button style='border:none;background-color:black;margin-top:10px;color:white;padding:5px;' type='submit'  name='action' value='intrested'>"+
"<span class='glyphicon glyphicon-star'></span>interesse"+
"</button></form></a></span>";
		 if(event[1].photo!=null)
			 photo="data:image/jpg;base64,"+event[1].photo.base64Image;
		if(event[0].avatar!=null)
			avatar="data:image/jpg;base64,"+event[0].avatar.base64Image;
	var even=""+
	  "<div class='single-blog-area blog-style-2 mb-100'>"+
	    "<div class='single-blog-thumbnail'>"+
	        "<img src='"+photo+"' alt=''>"+
	        "<div class='post-date'>"+
	          "<a href='#'>"+
	            jour(event[1].date)+"<span>"+mois(event[1].date)+"</span>"+
	          "</a>"+
	          interesse+
	        "</div>"+
	      "</div>"+
	    <!-- Blog Content -->
	    "<div class='single-blog-content mt-50'>"+
	      "<div class='line'></div>"+
	      "<h4>"+
	        "<a href='#'class='post-headline'>"+event[1].title+"</a>"+
	     " </h4>"+
	     "<p>"+event[1].description+"</p>"+
	      "<div class='post-meta'>"+
	        "<p>"+
	         " Par <a href='#'>"+event[0].name+"</a>"+
	        "</p>"+
	        "<p> A "+event[1].location+"</p>"+
	        "</div>"+
	        "<button class='button' onclick='myBtn(&quot;"+event[1].event_id+"&quot;,&quot;"+event[1].title+"&quot;,&quot;"+event[1].description+"&quot;,&quot;"+event[1].location+"&quot;)'>Modifier</button>"+
	    	"<form action='event' method='post' style='display:inline;'onsubmit='return valider()'> "+
			"<input type='hidden' name='id' value='"+event[1].event_id+"' />"+"<input class='button' name='action' type='submit' value='supprimer'></form>"+
	 " </div>"+
	"</div>";
	    var objTo = document.getElementById('events');
	      var new_post = document.createElement("div");
	      new_post.innerHTML = even;
	      objTo.appendChild(new_post);
	    i++;
	
	}
	
}
/**************si un utilisateur est interess&eacute par un event****************/
function deja_interesse(events,id,id_ev){
	
	var i=0;
	var event;
	while(i<events.length){
		event=events[i];
		
		if(event[1].event_id==id_ev)
			if(event[3]!=null){
				console.log(event[3].id+" ----------"+id);
			if(event[3].id==id)
				return true;
			}
		i++;
	}
	
	return false;
}

/*************************Affichage des dates *********************************/
function jour(date){
	var moonLanding = new Date(date);
	return moonLanding.getDate();
	}
	function mois(date){
	const monthNames = ["Jan", "F&eacutev", "Mars", "Avril", "Mai", "Juin",
	"Juil", "Aout", "Sept", "Oct", "Nov", "Dec"
	];
	var moonLanding = new Date(date);
	return monthNames[moonLanding.getMonth()];
	}
	function heure(date){
		var moonLanding = new Date(date);
		return moonLanding.getHours();
		}
		function minute(date){
		
		var moonLanding = new Date(date);
		return moonLanding.getMinutes();
		}
		function heure(date){
			var moonLanding = new Date(date);
			return moonLanding.getHours();
			}
			function minute(date){
			
			var moonLanding = new Date(date);
			return moonLanding.getMinutes();
			}
			/****************confirmer la suppression*****************/
function valider(){
			    var r = confirm("Êtes-vous surs de vouloir supprimer!");
			    if (r == true) {
			      return true;
			    } else {
			       return false;
			    }
			
		}
/***************popup window de modification*****************/
function myBtn(id,titre,content,adresse) {

				var modal = document.getElementById('myModal');
				var title = document.getElementById('pop_title');
				var contenu = document.getElementById('pop_content');
				var location = document.getElementById('pop_location');
				var annonce = document.getElementById('id');


				title.value=titre;
				annonce.value=id;
				contenu.value=content;
				location.value=adresse;
				modal.style.display = "block";
			}
			function fermer() {
				var modal = document.getElementById('myModal');

				modal.style.display = "none";
			}

			window.onclick = function(event) {
				var modal = document.getElementById('myModal');

				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
	/*****************l'id de current user**********************/
function getId(callback){
				var id;
				
				$.ajax({
					"url" : "annonce",
					"type" : "post",
					"data" : {
						"action" : "searchuserid",
					},
					"dataType" : "",
					"success" : function(text) {
			           id=text;
			           console.log(id);
			           callback(id);
			          
						} 

				});
		
			}

		