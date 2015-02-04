<?php
        mysql_connect("localhost", "robotUser", "robotPassword") or die(mysql_error()); 
        mysql_select_db("robot") or die(mysql_error()); 
        mysql_query("INSERT INTO Session (SessionStart,SessionFinish,IpAddress) VALUES ('$sStart', '$sFinish', '$_SERVER['REMOTE_ADDR']')"); 
        Print "Your information has been successfully added to the database."; 
?> 