(function(){
var allContentPs = document.querySelectorAll('p');
for(var i = 0; i < allContentPs.length; i ++){
allContentPs[i].classList.add('hyphenate');
//assuming you have classList support (ie, IE10+); otherwise...
//allContentPs[i].className += "hyphenate";
}
})();
