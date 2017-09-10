<html>
    <head>
        
        <title>
            Header
        </title>
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
        <script src="jquery-3.2.1.min.js"></script>

        <link rel="stylesheet" href="bus.css" type="text/css" />
        
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

       <script type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    
<body>
    <div>
        <table width="1333px">
        
    
                  <tr>
                  <td><h1><strong> &nbsp; &nbsp; <font face="lato" size="30">govT-wallet</font></strong></h1>
                  <td><img src="ap.jpg" style="border-radius: 120pt; height: 100px; width: 100px; float: right">
                      </td>
            </tr>
           </table>
			</div>
        <nav class="navbar navbar-default">
        <div class="container-fluid">
        <ul class="nav navbar-nav">
           <li><a href="#" id="addmoney">Add Money</a></li>
            <li><a href="#" id="showwallet">Wallet</a></li>
            <li><a href="#" id="lasttrans">Last Transactions</a></li>
                <li><a href="#" id="Qrcode">Pay Money</a></li>
            <div style="text-align-last: right">
            <li><h4>Welcometo <%=session.getAttribute("username")%></h4></li>
            <li><a href="Logoutbus.jsp" style="float: right">Signout</a></li>
            </div>
        </ul>     
       </div>
    </nav>
<div class="add-form">
    <label><b>Enter amount</b></label><input type="number"/>&nbsp;&nbsp;&nbsp;
<form action="register1.jsp">
         <div class="row">
             <div class="col-xs-12">
                 <div class="form-group">
                     <label for="Area">Area/SreetNumber</label>
                     <div class="input-group">
                         <input type="text" class="form-control" name="area" placeholder="area"  required autofocus />
                        </div>
        </div>                            
     </div>
   </div>
  <div class="row">
   <div class="col-xs-7 col-md-7">
    <div class="form-group">
       <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
       <input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YY" autocomplete="cc-exp" required />
     </div>
      </div>
<div class="col-xs-5 col-md-5 pull-right">
       <div class="form-group">
        <label for="cardCVC">CV CODE</label>
  <input type="tel" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" required/>
   </div>
    </div>
    </div>
<div class="row">
   <div class="col-xs-12">
     <div class="form-group">
      <label for="couponCode">COUPON CODE</label>
        <input type="text" class="form-control" name="couponCode" />
     </div>
   </div>                        
   </div>
<div class="row">
<div class="col-xs-12">
<button class="btn btn-success btn-lg btn-block" type="submit">Start Subscription</button>
</div>
</div>
<div class="row" style="display:none;">
<div class="col-xs-12">
<p class="payment-errors"></p>
</div>
</div>
</form>
</div>
    <script type="text/javascript">
             $(document).ready(function(){
                 var moneyform= $(".add-form");
                 var status= false;
                 $("#addmoney").click(function(event){
                     event.preventDefault();
                      if(status==false){
                          moneyform.fadeIn();
                          status=true;
                      }else{
                          moneyform.fadeOut();
                          status= false;
                      }
                 })
             })
    </script>
    </body>
</html>
    