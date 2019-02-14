<HTML>
  <HEAD>
      <link rel="stylesheet" type="text/css" href="cssfile.css">
  </HEAD>
  <BODY>
    <ul>
      <li><a href="home.php">HOME</a></li>
      <li><a href="allusers.php" class="active">VIEW All USERS</a></li>
    </ul>
    <b><H3>ALL USERS</H3></B>
    <form method="post" action="#">
      <table border="7">
        <tr>
          <th>FROM</th>
          <th>TO</th>
          <th>USER NAME</th>
          <th>EMAIL</th>
          <th>CURRENT CREDITS</th>
        </tr>
        <?php
          $conn=mysqli_connect("localhost","akshat","","cms");
          $query="select name,email,credits from user";
          $result=mysqli_query($conn,$query);
          while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td><input type= 'radio' name='selectfromuser' value ='".$row['email']."'";
            echo "></td>";
            echo "<td><input type= 'radio' name='selecttouser' value =".$row['email']." ></td>";
            echo "<td>".$row['name']."</td>";
            echo "<td>".$row['email']."</td>";
            echo "<td>".$row['credits']."</td>";
            echo "</tr>";
          }
          ?>
        </table>
        <input type="submit" value="Next" name="sub">
      </form>
      <?php
        if(isset($_POST["sub"]) && isset($_POST["selectfromuser"]) && isset($_POST["selecttouser"])){
        if($_POST["selectfromuser"]==$_POST["selecttouser"]){
            die("INVALID TRANSACTION");
          }
          session_start();
          $_SESSION['fromuser']=$_POST["selectfromuser"];
          $_SESSION['touser']=$_POST["selecttouser"];
          ?>
          <script>
            window.location="transaction.php";
          </script>
          <?php
        }
        else{
          if(isset($_SESSION['fromuser']))
            session_destroy();
        }
      ?>
      <br><br><br><br><br><br>
      <h4>ADD USER</h4>
      <form action="#" method="post">
        <br>Enter username<input name="uname">
        <br>Enter email<input name="email">
        <br>Enter age<input type="number" name="age">
        <br><input type="submit" name="add" value="add user">
      </form>
      <?php
      if(isset($_POST['add']) && isset($_POST['uname']) && isset($_POST['age']) && isset($_POST['email'])){
        $conn=mysqli_connect("localhost","root","12345","cms");
        $adduserquery="insert into user(name,age,email) values('".$_POST['uname']."',".$_POST['age'].",'".$_POST['email']."')";
        if(!mysqli_query($conn,$adduserquery)){
          echo "error in entered values";
        }
        else{
          echo "<script>alert('User added!!  500 credits have been added'); </script>";
        }
      }
      ?>
  </BODY>
</HTML>
