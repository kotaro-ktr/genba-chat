window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("action_menu_btn")
  const pullDownParents = document.getElementById("action_menu") 

  pullDownButton.addEventListener('click', function(){
  if (pullDownParents.getAttribute("style") == "display:block;"){
    pullDownParents.removeAttribute("style", "display:block;")
  } else {
    pullDownParents.setAttribute("style", "display:block;")
  }
  })
})