$( document ).ready(

  var bMobile =   // will be true if running on a mobile device
    navigator.userAgent.indexOf( "Mobile" ) !== -1 ||
    navigator.userAgent.indexOf( "iPhone" ) !== -1 ||
    navigator.userAgent.indexOf( "Android" ) !== -1 ||
    navigator.userAgent.indexOf( "Windows Phone" ) !== -1 ;

  if (bMobile) {
    $(".mobile_friendly").show();
    $(".mobile_unfriendly").hide();
  } else {
    $(".mobile_friendly").hide();
    $(".mobile_unfriendly").show();
  };

);
