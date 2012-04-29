$(function(){
  var po = $("a[rel=popover]").first().popover({
    content: $(this).siblings(".photos").html().toString()
  });
  
  console.log(po);
  
  $("a[rel=popover]").click(function(e){
   e.preventDefault(); 
  })
})