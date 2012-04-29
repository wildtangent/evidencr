//= require file-uploader/fileuploader.js

$(function(){
  $(".tagit").tagit({
  	availableTags: $('.tagit').data("source"),
  	allowSpaces: true,
  	caseSensitive: false,
  	placeholderText: $('.tagit').data("placeholder"),
  	removeConfirmation: true,
  	onlyAvailableTags: true,
  	itemName: "post",
  	fieldName: "pupil_ids"
  });
  
  $(".datepicker").datepicker({
    dateFormat: "dd/mm/yy"
  });  

  // FIXME: Hack
  $(".btn-group .btn").click(function(){
    console.log("clicked");
    if(!$(this).hasClass("active")){
      console.log("active");
      console.log($(this).prev("input:checkbox"));
      $(this).siblings(":checkbox").attr('checked', true);
    }else{
      console.log("inactive");
      console.log($(this).prev("input:checkbox"));
      $(this).siblings("input:checkbox").attr("checked", false);
    }
  });
  
  $.each($(".btn-group input:checked"), function(){
    $(this).siblings(".btn").button("toggle");
  })
  
  // Multi Upload images  
  var photo_uploader = new qq.FileUploader({
    element: $('#file-uploader')[0],
    multiple: true,
    action: '/uploads.json',
    allowedExtensions: ['png', 'gif', 'jpg', 'jpeg'],
    sizeLimit: 2097152
  });
  
});