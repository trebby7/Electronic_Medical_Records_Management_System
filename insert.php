<?php 
 // echo "<br>Website for Software Engineering(Alpha Version)";
 // echo "<br>";
 // echo "Connecting MySQL...";
 // echo "<br>";
 //连接数据库。
 session_start();
 $con = mysqli_connect("localhost","root","","doctor_for_test_se");
 //判断是否连接成功。
 if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }

 else
  {
      echo "Connected to MySQL!";
      echo "<br>";
  }
 //设定检索数据库的编码方式为UTF-8。
 mysqli_query($con,'set names utf8');
 $id = $_SESSION['id'];
 $sql = "INSERT INTO patient_test (Patient_Name, User_name, Doctor_ID)
 VALUES ('$_POST[Patient_Name]', '$_POST[User_Name]', '$id');";

 if (mysqli_query($con, $sql) === TRUE)
    {
        //测试弹窗
        $success =  "插入成功！";
        echo "<script language=\"JavaScript\">\r\n"; 
        echo "alert('{$success}');\r\n";
        //通过引入JS，实现页面跳转。
        echo "location.replace(\"http://project1/query.php\");\r\n";
        echo "</script>";
        //<meta http-equiv="refresh" content= "2;url= http://project1/test.php">;
        //header('Location: http://project1/test.php');
    } 
 else
    {
        //测试弹窗
        $fail = "插入失败！";
        echo "<script language=\"JavaScript\">\r\n";
        echo "alert('{$fail}');\r\n"; 
        //通过引入JS，实现页面跳转。
        echo "location.replace(\"http://project1/input_case.html\");\r\n";
        echo "</script>";
        //<meta http-equiv="refresh\\" content= "2;url= http://project1/input_case.php">;
        //header('Location: http://project1/input_case.php');
    }
 mysqli_close($con);
?>