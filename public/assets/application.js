$( document ).ready(

  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|BB|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    $(".mobile_friendly").show();
    $(".mobile_unfriendly").hide();
  } else {
    $(".mobile_friendly").hide();
    $(".mobile_unfriendly").show();
  };

);
