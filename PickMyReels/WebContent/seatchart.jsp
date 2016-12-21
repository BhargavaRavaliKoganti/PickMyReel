<%@page import="java.util.*, com.pickmyreel.DAO.*"%>

<!Doctype html>


<html>
    <head>
        <title>PickMyReel</title>
       
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="./bootstrap/css/jquery.seat-charts.css">
        <link rel="stylesheet" type="text/css" href="./bootstrap/css/stylesss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./bootstrap/css/styles.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
       <style>
/*select {
    display: none;
}*/
</style>
    </head>
    <%
    String msg=request.getParameter("msg");
    if(msg == null){
String theater = request.getParameter("theater");
    String time = request.getParameter("time");
    HttpSession hs = request.getSession();
    hs.setAttribute("theater", theater);
    hs.setAttribute("time", time);
    }%>
    <%
    HttpSession hs = request.getSession();
    String theater = (String)hs.getAttribute("theater");
    String time = (String)hs.getAttribute("time");
    String date = (String)hs.getAttribute("date");
ReserveDAO udao = new ReserveDAO();
List<String> lst = udao.seat(theater, time, date);
ListIterator<String> lt = lst.listIterator();

String[] arr=null;
int i =1;
%>

 <%
 String st= "";
 
while(lt.hasNext()){
	if(st == "") {
		st=  lt.next();
	} else {
		st = st +  ","  + lt.next() ;
	}
	
}

//out.print("</script>");
%>

   <!-- anushaardha@gmail.com -->
    <body>
    <nav class="navbar navbar-default" style="background-color: #f54803">
		<div class="navbar-header">
			<a class="navbar-brand"><font color=white>PickMyReel</font></a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="History.jsp"><font color=white><span class="glyphicon glyphicon-list-alt"></span>History</font></a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="LogoutController"><font color="white"><span class="glyphicon glyphicon-log-out"></span>Logout</font></a></li>
			</ul>
		</div>
		</nav>
    <input id="bookedSeats" type="hidden" value="<%=st%>"/>
    

    
        <div class="wrapper">
            <div class="container">
                <div id="seat-map">
                    <div class="front-indicator">Screen</div>
                   
                </div>
                <div class="booking-details">
                    <h2>Booking Details</h2>
               
                    <h3> Selected Seats (<span id="counter">0</span>):</h3>
                    <ul id="selected-seats"></ul>
                   
                    Total: <b>Rs<span id="total" >0</span></b>
                    
                    <form action="SeatController" id="selectedSeatsForm">
                    <input type="hidden" id="totals" name="totals" value="">
                        <input type="hidden" value="" name="selectedSeats" id="selectedSeats">
                        <button type="submit" class="checkout-button" id="button">Checkout &raquo;</button>
                    </form>
                    <div id="legend"></div>
                </div>
            </div>
        </div>
     
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="./jquery/jquery.seat-charts.js"></script>
       
        <script type="text/javascript">
        
           var firstSeatLabel = 1;           
            $(document).ready(function() {
                var $cart = $('#selected-seats'),
                    $counter = $('#counter'),
                    $total = $('#total'),
                    $set=$('#set'),
                    sc = $('#seat-map').seatCharts({
                    map: [
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          '_______________',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'eeeeeee_eeeeeee',
                          'fffffffffffffff',
                          'fffffffffffffff',
                    ],
                    seats: {
                        f: {
                            price   : 150,
                            classes : 'first-class', //your custom CSS class
                            category: 'First Class'
                        },
                        e: {
                            price   : 75,
                            classes : 'economy-class', //your custom CSS class
                            category: 'Economy Class'
                        }                   
                   
                    },
                    naming : {
                        top : false,
                        getLabel : function (character, row, column) {
                        	if(column==1){
                        		firstSeatLabel=1;
                        	}
                            return firstSeatLabel++;
                        },
                    },
                    legend : {
                        node : $('#legend'),
                        items : [
                            [ 'f', 'available',   'First Class' ],
                            [ 'e', 'available',   'Economy Class'],
                            [ 'e', 'unavailable', 'Economy Class Booked'],
                            [ 'f', 'unavailable', 'First Class Booked']
                        ]                   
                    },
                    click: function () {
                        if (this.status() == 'available') {
                            //String seat = this.settings.label
                            /* $('.checkout-button').click(function(){
                                 window.print();
                            }); */
                            //let's create a new <li> which we'll add to the cart items
                            $('<li>'+this.data().category+' Seat # '+this.settings.id+': <b>Rs'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
                                .attr('id', 'cart-item-'+this.settings.id)
                                .data('seatId', this.settings.id)
                                .appendTo($cart);
                           
                            /*
                             * Lets update the counter and total
                             *
                             * .find function will not find the current seat, because it will change its stauts only after return
                             * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
                             */
                            $counter.text(sc.find('selected').length+1);
                            $total.text(recalculateTotal(sc)+this.data().price);
                            $("#totals").val(recalculateTotal(sc)+this.data().price);
                           // var arr[];
                            if(!sc.find('selected').length) {
                                $("#selectedSeats").val(this.settings.id);
                                var text = $("#selectedSeats").val();
                               // arr.push($("#selectedSeats").val())                               
                                console.log("text", text);                       
                            } else {
                                var text = $("#selectedSeats").val();
                                text = text + "," + this.settings.id;
                                //arr.push($("#selectedSeats").val())
                                console.log("text", text);   
                                $("#selectedSeats").val(text);
                               
                            }
                          
                           
                           
                           
                            return 'selected';
                        } else if (this.status() == 'selected') {
                            //update the counter
                            $counter.text(sc.find('selected').length-1);
                            //and total
                            $total.text(recalculateTotal(sc)-this.data().price);
                       
                            //remove the item from our cart
                            $('#cart-item-'+this.settings.id).remove();
                       
                            //seat has been vacated
                            return 'available';
                        } else if (this.status() == 'unavailable') {
                            //seat has been already booked
                            return 'unavailable';
                        } else {
                            return this.style();
                        }
                    }
                });

                //this will handle "[cancel]" link clicks
                $('#selected-seats').on('click', '.cancel-cart-item', function () {
                    //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
                	sc.get($(this).parents('li:first').data('seatId')).click();
                });
				
               
                var bookSeatsStr = $("#bookedSeats").val();
                var arr = bookSeatsStr.split(',');
                sc.get(arr).status('unavailable');
       
        });

        function recalculateTotal(sc) {
            var total = 0;
       
            //basically find every selected seat and sum its price
            sc.find('selected').each(function () {
                total += this.data().price;
            });
           
            return total;
        }
       
       
       
        </script>
        <div class=well-lg size=70px style="background-color: #313637; margin-top: 50px"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
    </body>
</html>