var xhr;
function data(a) {
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				/*alert(xhr.responseText);*/
				var obj = JSON.parse(xhr.responseText);
				for (var i = 0; i < obj.hostelinfo.length; i++) {

					var wrapper = document.createElement("div");
					wrapper.setAttribute("class", "wrapper");

					var navbar = document.createElement("div");
					navbar.setAttribute("class", "navbar");
					navbar.innerHTML = `
        <div>            
            <nav class="navbar navbar-inverse" id="nav">
                <div id="nagivation" class="navbar-collapse collapse">
                    <div class="nevbar-header">
                        <a href="#" class="navbar-brand"></a>
                    </div>
                    <ul class="nav nav-pills navbar-left">
                        <li class="dropdown use ymm ymm-fw open"><a
                            href="http://localhost:8080/Hostel_Finder/home"
                            class="dropdown-toggle">Home</a></li>
                        <li class="dropdown use ymm ymm-fw"><a href="#"
                            class="dropdown-toggle" data-toggle="dropdown">Category<span
                                class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8080/Hostel_Finder/AcRoom">AC</a></li>
                                <li><a href="http://localhost:8080/Hostel_Finder/NonAcRoom">NON-AC</a></li>
                                <li><a href="#">AC/NON-AC</a></li>
                            </ul></li>
                        <li class="dropdown use ymm ymm-fw"><a href="#"
                            class="dropdown-toggle" data-toggle="dropdown">Filter<span
                                class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8080/Hostel_Finder/LowToHigh">LowToHigh</a></li>
                                <li><a href="http://localhost:8080/Hostel_Finder/HighToLow">HighToLow</a></li>
                            </ul></li>
                        <li class="dropdown use ymm ymm-fw"><a href="#"
                            class="dropdown-toggle" data-toggle="dropdown">City<span
                                class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Lucknow</a></li>
                            </ul></li>
        
                        <li><a href="http://localhost:8080/Hostel_Finder/login">Login</a>
                        </li>
                        <li><a href="http://localhost:8080/Hostel_Finder/registration">Sing
                                Up</a></li>
                    </ul>
                    <ul class="nav nav-pills navbar-right">
                        <li><a href="http://localhost:8080/Hostel_Finder/ContactUs">Contact
                                us</a></li>
                        <li><a href="http://localhost:8080/Hostel_Finder/AboutUs">About
                                us</a></li>
                        <li><a href="#" class="fa fa-search"></a></li>
                        <li><a href="http://www.facebook.com" class="fa fa-facebook"></a>
                        </li>
                        <li><a href="https://twitter.com/login" class="fa fa-twitter"></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>`;

					var all = document.createElement("div");
					all.setAttribute("class", "all");

					var top = document.createElement("div");
					top.setAttribute("class", "top");
					var d1 = document.createElement("div");
					d1.setAttribute("class", "hostelimg");
					top.appendChild(d1);
					var im = document.createElement("img");
					var imgpath = obj.hostelinfo[i].imgpath;
					im.setAttribute("src", imgpath);
					im.setAttribute("class", "_img");
					im.setAttribute("alt", "add img");
					d1.appendChild(im);
					var d2 = document.createElement("div");
					d2.setAttribute("class", "text");
					var h1 = document.createElement("h1");
					h1.innerText = obj.hostelinfo[i].hostelname;
					d2.appendChild(h1);
					top.appendChild(d2);

					var nav = document.createElement("div");
					nav.setAttribute("class", "D1");
					nav.innerHTML = `
					<form action="http://localhost:8080/Hostel_Finder/bookingModel" class="form-inline" method="Post">
        <div class="form-g">
            <label class="Label" for="cheakIn">Cheak In</label>
            <input
            type="date" class="form-control  input-lg" name="checkin" id="cheakIn" placeholder="jane.doe@example.com">
        <!-- <button type="date" class="btn btn-default btn-lg">Cheak In</button> -->
        </div>
        <div class="form-g">
            <label class="Label" for="cheakOut">Cheak Out</label>
            <input type="date" class="form-control  input-lg" name="checkout" id="cheakOut" placeholder="jane.doe@example.com">
        </div>
        <div class="form-g">
            <label class="Label" for="guests">Guests</label>
            <select class="form-control input-lg" name="guests" id="guests">
                <option value="">Select Guests</option>
                <option value="1">1 Guest</option>
                <option value="2">2 Guest</option>
                <option value="3">3 Guest</option>
            </select>
        </div>
		<div class="form-g">
            <label class="Label" for="RoomType">RoomType</label>
            <select class="form-control input-lg" name="roomtype" id="guests">
                <option value="">RoomType</option>
                <option value="single">Single</option>
                <option value="double">Double</option>
                <option value="triple">Triple</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning btn-lg">Booking</button>
    </form>`;

					var d3 = document.createElement("div");
					d3.setAttribute("class", "content-area");
					var d4 = document.createElement("div");
					d4.setAttribute("class", "Des my-10");
					d3.appendChild(d4);
					var h2 = document.createElement("h1");
					h2.innerText = "Hostel Description";
					// h.innerHTML = obj.hostelinfo[i].hostelname;
					var p1 = document.createElement("p");
					p1.innerHTML = obj.hostelinfo[i].description;
					// p1.innerHTML = obj.hostelinfo[i].description;
					d4.appendChild(h2);
					d4.appendChild(p1);
					all.appendChild(top);
					all.appendChild(nav);
					all.appendChild(d3);

					wrapper.appendChild(navbar);
					wrapper.appendChild(all);
					document.getElementById(a).appendChild(wrapper);
				}
			}
		}
	};
	xhr.open("get", "http://localhost:8080/Hostel_Finder/hosteldataModel", true);
	xhr.send(null);
}
