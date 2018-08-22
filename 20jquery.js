$(document).ready(function(){
/*
  $("#l1").click(function(){
    $("#l1").animate({ fontSize:"1em"});
    $("#first").animate({height:"44px"});
    $("#first,#l1").addClass("color");
  });
    $("#l2").click(function(){
    $("#l2").animate({ fontSize:"1em"});
    $("#last").animate({height:"44px"});
    $("#last,#l2").addClass("color");
  });
      $("#l1").click(function(){
    $("#l1").animate({ fontSize:"1em"});
    $("#first").animate({height:"44px"});
    $("#first,#l1").addClass("color");
  });
        $("#l1").click(function(){
    $("#l1").animate({ fontSize:"1em"});
    $("#first").animate({height:"44px"});
    $("#first,#l1").addClass("color");
  });
          $("#l1").click(function(){
    $("#l1").animate({ fontSize:"1em"});
    $("#first").animate({height:"44px"});
    $("#first,#l1").addClass("color");
  });




  $("#first").mouseleave(function(){
    var first = $("#first").val();
    if(first=="")
    {
    $("label").animate({ fontSize:"2em"});
    $("#first").animate({height:"1px"});
    $("#first,label").addClass("color");
    }
  
    
  });*/

  $("#validate").click(function(){
    var f =true;
   var a=/^[A-Za-z]+$/; 
    var first = $("#first").val();
    if(!a.test(first)){
      
      $("#rfirst").text("enter the first name");
      f= false;
    }
    var last = $("#last").val();
     if(!a.test(last)){
     $("#rlast").text("enter the last name");
      f= false;
    } 
      var k=1;
      var pass = $("#pass").val();
      var UC=/[A-Z]/g; 
      if(!pass.match(UC)){
         k++;
      }
      var LC=/[a-z]/g; 
      if(!pass.match(LC)){
        k++;
      }
      var Num=/[0-9]/g; 
      if(!pass.match(Num)){
         k++;
      }
      var Num=/[#@$&*$]/g; 
      if(!pass.match(Num)){
        k++;
      }
      if(k!=1)
      {
       f= false;
      }
      return f;
  }); 

 /* $("input").animate({height:"1px"});
  $("label").animate({ fontSize:"2em"});
  */





});

/*
function check(){
  var flag = true;
  var first = document.getElementById("first").value;

  if(first.length<=0){

    var res = document.getElementById("rfirst");
    res.style.color="red";
    res.innerHTML="Enter the First Name";
    flag = false;
  }

  var last = document.getElementById("last").value;
  if(last.length<=0){

    var res = document.getElementById("rlast");
    res.style.color="red";
    res.innerHTML="Enter the Last Name";
    flag = false;
  }

  var user = document.getElementById("user").value;
  if(user.length<=0){

    var res = document.getElementById("ruser");
    res.style.color="red";
    res.innerHTML="Choose a Gmail address";
    flag = false;
  }

  var pass = document.getElementById("pass").value;
  if(pass.length<=0){

    var res = document.getElementById("rpass");
    res.style.color="red";
    res.innerHTML="Enter the Password";
    flag = false;
  }
  else if (pass.length<8) //Password 1Caps, 1Special , 1Numric, total >8
  {
    var res = document.getElementById("rpass");
    res.style.color="red";
    res.innerHTML="Use 8 or more characters for your Password";
    flag = false;
  }

 var cpass = document.getElementById("cpass").value;
 if (pass!=cpass)
  {
    var res = document.getElementById("rcpass");
    res.style.color="red";
    res.innerHTML="Those passwords didn't match. Try again.";
    flag = false;
  }

  return flag;
}
*/

var i=0;
var a=0;
function add(){
  if(i>=5){
    alert("sorry only 5 Member add");
  }
  else{
  var x = document.getElementById("show");
  var div1 =document.createElement("div");
    div1.setAttribute("class", "form-add");
    div1.setAttribute("id", "id_"+i);
   // div1.setAttribute("style", "width:300px;");
var element = document.createElement("input");
  element.setAttribute("type", "text");
  element.setAttribute("placeholder", "Family Member");
  element.setAttribute("name", "family"+i);
   div1.appendChild(element);
var element1 = document.createElement("input");
  element1.setAttribute("type", "radio");
  element1.setAttribute("value", "M");
  element1.setAttribute("style", "width:14px;height:20px;");
  element1.setAttribute("name", "gen"+i);
    div1.appendChild(element1);
var male =document.createElement("label");
  male.appendChild(document.createTextNode("M "));
    div1.appendChild(male);
var element2 = document.createElement("input");
  element2.setAttribute("type", "radio");
  element2.setAttribute("value", "F");
  element2.setAttribute("style", "width:14px; height:20px;");
  element2.setAttribute("name", "gen"+i);
    div1.appendChild(element2);
var female =document.createElement("label");
  female.appendChild(document.createTextNode("F"));
    div1.appendChild(female);
var element3 = document.createElement("input");
  element3.setAttribute("type", "number");
  element3.setAttribute("placeholder", "Age");
  element3.setAttribute("style", "width:40px;");
  element3.setAttribute("name", "num"+i);
  div1.appendChild(element3);
var p = document.createElement("p");
  var a =document.createElement("a");
    a.appendChild(document.createTextNode("X")); 
    a.setAttribute("onclick","remove('show' , 'id_"+i+"')");
    a.setAttribute("href","javascript:void(0)")
      p.appendChild(a); 
      div1.appendChild(p);
      x.appendChild(div1);
i++;
}}

function remove( pid , cid){
  var parent = document.getElementById(pid);
  var child =  document.getElementById(cid);
  parent.removeChild(child);
}
