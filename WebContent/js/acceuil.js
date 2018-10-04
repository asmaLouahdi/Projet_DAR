$(document).ready(function() {
    var temp = "none";

    $("#li_actualite").click(function () {
        openMatter(1);
    });
    $("#li_events").click(function () {
        openMatter(2);
    });
    $("#li_publications").click(function () {
        openMatter(3);
    });
    $("#li_accessoires").click(function () {
        openMatter(4);
    });
    $("#li_think").click(function () {
        openMatter(5);
    });
  
    function openMatter(obj) {
        for (var i = 1; i < 5; i++) {
            if (i == obj) {
                temp = "block";
            } else {
                temp = "none";
            }
            document.getElementById("matter" + i).style.display = temp;

        }
    }
});



