<!DOCTYPE html>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
    margin: auto;
    width: 60%;
    }
form {border: 3px solid blue;}

input[type=email], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid blue;
  box-sizing: border-box;
}

button {
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: red;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

h1 {
    text-align: center;

  }

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }

}
</style>
</head>
<body>

 
<h2>Login Form</h2>

<form action="loginprocess.php" method="post">
  <div class="imgcontainer">
    <img src="images/1234.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uemail"><b>Username</b></label>
    <input type="email" placeholder="Enter Your Username" name="uemail" required>

    <label for="upass"><b>Password</b></label>
    <input type="password" placeholder="Enter Password here" name="upass" required>
        
    <button type="submit">Login</button>
<!--
    //<label>
     // <input type="checkbox" checked="checked" name="remember"> Remember me
    //</label>
-->
  </div>
  <div class="container" style="background-color:#f1f1f1">
  	 <span >Doesn't have any Account?</span>
    <button type="button" class="cancelbtn" onclick="signupfn()">Register</button>
   
  </div>

  
</form>

<script>
            function signupfn() {
                location.assign('register.php'); ///GET method
            }
        </script>

</body>
</html>

    
        

    