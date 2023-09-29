$(document).ready(function(){

    $(".pledge").click(function () {
    $(".pledge button").hide(400);
    $(".pledge a").show(400);
  });


$(".select_city").change(function(){
  var id = $(this).val();
  $.ajax({
      url:"/ajax.get.city.neighborhood",
      method:"get",
      data:{id:id},
      success:function(data) {
        $(".get_neighborhood").html(data);
      }
  });
});




$('.remove-picture-offer').on('click', function(event){
    event.preventDefault()
    var id     = $(this).data("id");
    $(this).hide(400);
    $.ajax({
        url:"/delete.picture.offer/" + id,
        method:"get",
        data:{id:id},
        success:function(data) {
          $(this).hide(400);
        }
    });
});



    $(".btn-delete-gallery-offer").click(function(event){
      event.preventDefault()
      var id = $(this).data("id");
      $.ajax({
          url:"/delete.gallery.offer",
          method:"get",
          data:{id:id},
          success:function(data) {
            $(this).hide(400)
          }
      });
    });

    $(".report-offer").click(function(){
      var id          = $(this).data("id");
      var type        = "offer";
      var report_area = $("#report_area").val();
      var request = new XMLHttpRequest();
      request.open("GET", "/send.report/" + id + "/" + report_area + "/" + type);
      request.send();
      $(".single-page .alert-primary").show(400);
    });

    $(".report-advertiser").click(function(){
      var id          = $(this).data("id");
      var type        = "advertiser";
      var report_area = $("#report_area").val();
      var request = new XMLHttpRequest();
      request.open("GET", "/send.report/" + id + "/" + report_area + "/" + type);
      request.send();
      $(".single-page .alert-primary").show(400);
    }); 


    // اعجبك
    $(".love-it").click(function(){
      var id          = $(this).data("id");
      var request = new XMLHttpRequest();
      request.open("GET", "/store.love/" + id);
      request.send();
      $(this).css("font-weight", "bold");
      $(this).css("color", "red");
    }); 




  $(document).ready(function () {
    $('#people').chosen();
    $('#people2').chosen();
    $('#people3').chosen();
    $('#people4').chosen();
    $('#people5').chosen();
    $('#people6').chosen();
    $('#people7').chosen();
  });













  });