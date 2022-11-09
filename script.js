function formvalidation()
{
var name=document.contact.name;
var mobile=document.contact.mobile;
var email=document.contact.email;
var query=document.contact.query;

if(name.value.length==0)
{
   alert("enter your name");
   document.contact.name.focus();
   return(false);
}
else if(mobile.value.length==0)
{
   alert("enter your Mobile No");
   document.contact.mobile.focus();
   return(false);
}
else if(mobile.value.length<10)
{
   alert("enter atleast 10chara mobile no");
   document.contact.mobile.focus();
   return(false);
}
else if(email.value.length==0)
{
   alert("enter your email");
   document.contact.email.focus();
   return(false);
}
else if(query.value.length==0)
{
   alert("enter your Query ");
   document.contact.query.focus();
   return(false);
}

else
{  return(true);

}
      
}

function Hello()
{
    alert("Hello, World");
}





