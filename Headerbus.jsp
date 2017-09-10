<html>
    <head>
        
        <title>
            Header
        </title>
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
        <script src="jquery-3.2.1.min.js"></script>

        <link rel="stylesheet" href="style.css" type="text/css" />
        
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
           <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Features</a></li>
            <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
           
            <li><a href="#" id="login" style="float:right">Login</a></li>
            <li><a href="#" id="signup" style="float: right">Signup</a></li>
        </ul>     
       </div>
     
     </nav>
            
         
           <div class="login-form">
              <form action="Loginbus.jsp">
                  <label><b>Username</b></label>
                    <div>
                       <input type="text" placeholder="Email" required name="txtusername"/>
                    </div>
                  <label><b>Password</b></label>
                     <div>
                        <input type="password" placeholder="Password" required name="txtpassword"/>
                     </div>
                     <div>
                        <input type="submit" value="Log in"/>
                     </div>
                  <div>
                     <a href="#" style="text-decoration: none;position: relative;top: 20px;font-size: :14px;color: gray;">Forgot Password</a>
                  </div>
               </form>
           </div>
            <div class="signup-form">
                <form method="post" action="registerbus.jsp">
                     <label><b>Name</b></label>
                        <div>
                          <input type="text" required name="name"/>
                        </div>
                     <label><b>EmailID</b></label>
                        <div>
                          <input type="text" required name="email"/>
                        </div>
                      <label><b>Password</b></label>
                        <div>
                          <input type="text" required name="pass"/>
                        </div>
                      <label><b>Phone Number</b></label>
                         <div>
                           <input type="text" required name="phone"/>
                         </div>
                       <div>
                         <aside><input type="submit" value="Submit"></aside>
                         <aside><input type="reset" value="Reset"></aside>
                       </div>
                
                </form>
    </div>
    
    <script type="text/javascript">
             $(document).ready(function(){
                 var form= $(".login-form");
                 var status= false;
                 var signform= $(".signup-form");
                 $("#login").click(function(event){
                     event.preventDefault();
                      if(status==false){
                          form.fadeIn();
                          status=true;
                      }else{
                          form.fadeOut();
                          status= false;
                      }
                 })
                 
                 $("#signup").click(function(event)
                                   {
                     event.preventDefault();
                     if(status==false){
                         signform.fadeIn();
                         status=true;
                     }else{
                         signform.fadeOut();
                         status=false;
                     }
                 })
                 
             })
           </script>
    </body>
</html>
    