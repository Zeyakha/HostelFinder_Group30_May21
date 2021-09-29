/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function formvalidator(a,b){
    var x=document.getElementById(a);
    var y=document.getElementById(b);
    if(x.value===""){
        y.innerHTML="Field should not be empty";
    }else if(!/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(x.value)){
        y.innerHTML="email is not valid";
            }else{
                y.innerHTML="";
            }
        }
//function formvalidatr(a,b){
 //   var x=document.getElementById(a).value;
   // var y=document.getElementById(b);
    //if(x===""){
      //  y.innerHTML="Field should not be em-****pty";
    //}else{
     //y.innerHTML="";   
 //}
 //}
  /*<div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-4">
                            <img src="./images/Girls.jpg" class="img-thumbnail" alt="Cinque Terre">
                    </div>
                    <div class="col-md-8" id="hos">
                        <h1>Integral Girls Hostel </h1>
                        <p>Common Room equipped with indoor game facilities.
    Playground and courts for outdoor games like Badminton, Volleyball, Cricket, Skating, Lawn Tennis, Basketball, etc.
    Gymnasium
    24 Hrs. wi-fi
    Water Purifier
    Parking
    Guest Rooms
    Reading Room</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                    <a href="http://localhost:8080/HostelFinder/hosteldata/Integralgirlshostel.jsp">Know More</a>
                </div>
            </div>*/
var xhr;
function dataGetter(a){
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //document.getElementById(a).innerHTML=xhr.responseText;
               //alert(xhr.responseText);
                var obj=JSON.parse(xhr.responseText);
               for(var i=0;i<obj.hostelinfo.length;i++){
                //var image="http://localhost:8080/Hostel_Finder/hostelGetter="+obj.hostelinfo[i].imgpath;
				var image=obj.hostelinfo[i].imgpath;
                //alert(prise);
                var d1=document.createElement("div");
                d1.setAttribute("class","col-md-4");
                var im=document.createElement("img");
                im.setAttribute("src",image);
                im.setAttribute("class","img-thumbnail");
                im.setAttribute("alt","Cinque Terre");
                d1.appendChild(im);
                var d2=document.createElement("div");
                d2.setAttribute("class","col-md-8");
                d2.setAttribute("id","hos");
                var h=document.createElement("h1");
                h.innerHTML=obj.hostelinfo[i].hostelname;
                var p1=document.createElement("p");
                p1.innerHTML=obj.hostelinfo[i].description;
                d2.appendChild(h);
                d2.appendChild(p1);
                var d3=document.createElement("div");
                d3.setAttribute("class","row");
                d3.appendChild(d1);
                d3.appendChild(d2);
                var d4=document.createElement("div");
                d4.setAttribute("class","col-md-3");
                var d5=document.createElement("div");
                d5.setAttribute("class","col-md-6");
                d5.appendChild(d3);
                var d6=document.createElement("div");
                d6.setAttribute("class","col-md-3");
                var prise=document.createElement("p");
                var an=document.createElement("a");
                var hostel_link="http://localhost:8080/Hostel_Finder/HostelData?hostelname="+obj.hostelinfo[i].hostelname+"";
                an.setAttribute("href",hostel_link);
                var b=document.createTextNode("Know more");
                an.appendChild(b);
                prise.innerHTML=obj.hostelinfo[i].rent+"/Month";
                d6.appendChild(prise);
                d6.appendChild(an);
                var d7=document.createElement("div");
                d7.setAttribute("class","row");
                d7.appendChild(d4);
                d7.appendChild(d5);
                d7.appendChild(d6);
                document.getElementById(a).appendChild(d7);
            }
        }
    }
};
    xhr.open("get","http://localhost:8080/Hostel_Finder/hostelGetter",true);
    xhr.send(null);
    }
    var xhr;
function AcRoom(a){
    //alert("dataGetter");
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //document.getElementById(a).innerHTML=xhr.responseText;
  //              alert(xhr.responseText);
                var obj=JSON.parse(xhr.responseText);
               for(var i=0;i<obj.blog_info.length;i++){
                var image="http://localhost:8080/HostelFinder/hf/?action=model&page=ImageSender&path="+obj.blog_info[i].img_path;
                //alert(prise);
                var d1=document.createElement("div");
                d1.setAttribute("class","col-md-4");
                var im=document.createElement("img");
                im.setAttribute("src",image);
                im.setAttribute("class","img-thumbnail");
                im.setAttribute("alt","Cinque Terre");
                d1.appendChild(im);
                var d2=document.createElement("div");
                d2.setAttribute("class","col-md-8");
                d2.setAttribute("id","hos");
                var h=document.createElement("h1");
                h.innerHTML=obj.blog_info[i].blog_title;
                var p1=document.createElement("p");
                p1.innerHTML=obj.blog_info[i].blog;
                d2.appendChild(h);
                d2.appendChild(p1);
                var d3=document.createElement("div");
                d3.setAttribute("class","row");
                d3.appendChild(d1);
                d3.appendChild(d2);
                var d4=document.createElement("div");
                d4.setAttribute("class","col-md-3");
                var d5=document.createElement("div");
                d5.setAttribute("class","col-md-6");
                d5.appendChild(d3);
                var d6=document.createElement("div");
                d6.setAttribute("class","col-md-3");
                var prise=document.createElement("p");
                var an=document.createElement("a");
                var hostel_link=obj.blog_info[i].hostel_path+".jsp";
                an.setAttribute("href",hostel_link);
                var b=document.createTextNode("Know more");
                an.appendChild(b);
                //a.nodeValue="Know more";
                
                prise.innerHTML=obj.blog_info[i].rent+"/Month";
       //         alert(prise);
                d6.appendChild(prise);
                d6.appendChild(an);
                var d7=document.createElement("div");
                d7.setAttribute("class","row");
                d7.appendChild(d4);
                d7.appendChild(d5);
                d7.appendChild(d6);
                document.getElementById(a).appendChild(d7);
                
                
                
                //alert(obj.blog_table[1].blog);
            }
            //obj.blog_info;
        }
    }
};
    xhr.open("get","http://localhost:8080/HostelFinder/hf/?action=model&page=AcHostel",true);
    xhr.send(null);
    }
    
    
    var xhr;
function NonAcRoom(a){
    //alert("dataGetter");
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //document.getElementById(a).innerHTML=xhr.responseText;
  //              alert(xhr.responseText);
                var obj=JSON.parse(xhr.responseText);
               for(var i=0;i<obj.blog_info.length;i++){
                var image="http://localhost:8080/HostelFinder/hf/?action=model&page=ImageSender&path="+obj.blog_info[i].img_path;
                //alert(prise);
                var d1=document.createElement("div");
                d1.setAttribute("class","col-md-4");
                var im=document.createElement("img");
                im.setAttribute("src",image);
                im.setAttribute("class","img-thumbnail");
                im.setAttribute("alt","Cinque Terre");
                d1.appendChild(im);
                var d2=document.createElement("div");
                d2.setAttribute("class","col-md-8");
                d2.setAttribute("id","hos");
                var h=document.createElement("h1");
                h.innerHTML=obj.blog_info[i].blog_title;
                var p1=document.createElement("p");
                p1.innerHTML=obj.blog_info[i].blog;
                d2.appendChild(h);
                d2.appendChild(p1);
                var d3=document.createElement("div");
                d3.setAttribute("class","row");
                d3.appendChild(d1);
                d3.appendChild(d2);
                var d4=document.createElement("div");
                d4.setAttribute("class","col-md-3");
                var d5=document.createElement("div");
                d5.setAttribute("class","col-md-6");
                d5.appendChild(d3);
                var d6=document.createElement("div");
                d6.setAttribute("class","col-md-3");
                var prise=document.createElement("p");
                var an=document.createElement("a");
                var hostel_link=obj.blog_info[i].hostel_path+".jsp";
                an.setAttribute("href",hostel_link);
                var b=document.createTextNode("Know more");
                an.appendChild(b);
                //a.nodeValue="Know more";
                
                prise.innerHTML=obj.blog_info[i].rent+"/Month";
       //         alert(prise);
                d6.appendChild(prise);
                d6.appendChild(an);
                var d7=document.createElement("div");
                d7.setAttribute("class","row");
                d7.appendChild(d4);
                d7.appendChild(d5);
                d7.appendChild(d6);
                document.getElementById(a).appendChild(d7);
                
                
                
                //alert(obj.blog_table[1].blog);
            }
            //obj.blog_info;
        }
    }
};
    xhr.open("get","http://localhost:8080/HostelFinder/hf/?action=model&page=NonAcHostel",true);
    xhr.send(null);
    }
    
    
    var xhr;
function LowToHigh(a){
   // alert("dataGetter");
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //document.getElementById(a).innerHTML=xhr.responseText;
               // alert(xhr.responseText);
                var obj=JSON.parse(xhr.responseText);
               for(var i=0;i<obj.hostelinfo.length;i++){
                //var image="http://localhost:8080/Hostel_Finder/hostelGetter="+obj.hostelinfo[i].imgpath;
				var image=obj.hostelinfo[i].imgpath;
                //alert(prise);
                var d1=document.createElement("div");
                d1.setAttribute("class","col-md-4");
                var im=document.createElement("img");
                im.setAttribute("src",image);
                im.setAttribute("class","img-thumbnail");
                im.setAttribute("alt","Cinque Terre");
                d1.appendChild(im);
                var d2=document.createElement("div");
                d2.setAttribute("class","col-md-8");
                d2.setAttribute("id","hos");
                var h=document.createElement("h1");
                h.innerHTML=obj.hostelinfo[i].hostelname;
                var p1=document.createElement("p");
                p1.innerHTML=obj.hostelinfo[i].description;
                d2.appendChild(h);
                d2.appendChild(p1);
                var d3=document.createElement("div");
                d3.setAttribute("class","row");
                d3.appendChild(d1);
                d3.appendChild(d2);
                var d4=document.createElement("div");
                d4.setAttribute("class","col-md-3");
                var d5=document.createElement("div");
                d5.setAttribute("class","col-md-6");
                d5.appendChild(d3);
                var d6=document.createElement("div");
                d6.setAttribute("class","col-md-3");
                var prise=document.createElement("p");
                var an=document.createElement("a");
                var hostel_link=obj.hostelinfo[i].hostel_path+".jsp";
                an.setAttribute("href",hostel_link);
                var b=document.createTextNode("Know more");
                an.appendChild(b);
                //a.nodeValue="Know more";
                
                prise.innerHTML=obj.hostelinfo[i].rent+"/Month";
      //          alert(prise);
                d6.appendChild(prise);
                d6.appendChild(an);
                var d7=document.createElement("div");
                d7.setAttribute("class","row");
                d7.appendChild(d4);
                d7.appendChild(d5);
                d7.appendChild(d6);
                document.getElementById(a).appendChild(d7);
                
                
                
                //alert(obj.blog_table[1].blog);
            }
            //obj.blog_info;
        }
    }
};
    xhr.open("get","http://localhost:8080/Hostel_Finder/LowToHighModel",true);
    xhr.send(null);
    }
    
    var xhr;
function HighToLow(a){
   // alert("dataGetter");
   xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //document.getElementById(a).innerHTML=xhr.responseText;
               // alert(xhr.responseText);
                var obj=JSON.parse(xhr.responseText);
               for(var i=0;i<obj.hostelinfo.length;i++){
                //var image="http://localhost:8080/Hostel_Finder/hostelGetter="+obj.hostelinfo[i].imgpath;
				var image=obj.hostelinfo[i].imgpath;
                //alert(prise);
                var d1=document.createElement("div");
                d1.setAttribute("class","col-md-4");
                var im=document.createElement("img");
                im.setAttribute("src",image);
                im.setAttribute("class","img-thumbnail");
                im.setAttribute("alt","Cinque Terre");
                d1.appendChild(im);
                var d2=document.createElement("div");
                d2.setAttribute("class","col-md-8");
                d2.setAttribute("id","hos");
                var h=document.createElement("h1");
                h.innerHTML=obj.hostelinfo[i].hostelname;
                var p1=document.createElement("p");
                p1.innerHTML=obj.hostelinfo[i].description;
                d2.appendChild(h);
                d2.appendChild(p1);
                var d3=document.createElement("div");
                d3.setAttribute("class","row");
                d3.appendChild(d1);
                d3.appendChild(d2);
                var d4=document.createElement("div");
                d4.setAttribute("class","col-md-3");
                var d5=document.createElement("div");
                d5.setAttribute("class","col-md-6");
                d5.appendChild(d3);
                var d6=document.createElement("div");
                d6.setAttribute("class","col-md-3");
                var prise=document.createElement("p");
                var an=document.createElement("a");
                var hostel_link=obj.hostelinfo[i].hostel_path+".jsp";
                an.setAttribute("href",hostel_link);
                var b=document.createTextNode("Know more");
                an.appendChild(b);
                //a.nodeValue="Know more";
                
                prise.innerHTML=obj.hostelinfo[i].rent+"/Month";
      //          alert(prise);
                d6.appendChild(prise);
                d6.appendChild(an);
                var d7=document.createElement("div");
                d7.setAttribute("class","row");
                d7.appendChild(d4);
                d7.appendChild(d5);
                d7.appendChild(d6);
                document.getElementById(a).appendChild(d7);
                
                
                
                //alert(obj.blog_table[1].blog);
            }
            //obj.blog_info;
        }
    }
};
    xhr.open("get","http://localhost:8080/Hostel_Finder/HighToLowModel",true);
    xhr.send(null);
    }