PHP code linked with MySQL.

  You can run this application with XAMPP. You can find a way to run code PHP with Xampp on Youtube.

  When you set up the environment to run notice that you "Start" MySQL after "Start" Apache. After starting MySQL in XAMPP if it is turned off. It can be a conflicting port 3306 with another application. This can happen if you have another MySQL server run in service. In this case, open Task Manager, click on "Service" find MySQL80 and turn off this. After that, you can "Start" again MySQL.

  You should find file Connection.php in the model folder and change the variable $password = "" to "password you set". This is because the default username ="root" and the password of XAMPP is empty "".
  
   You can change PHPMyAdmin password by following. Open phpMyAdmin and select the SQL tab. Then type this command: SET PASSWORD FOR 'root'@'localhost' = PASSWORD('your_root_password');
  
  After that, find file C:\xampp\phpMyAdmin\config.inc.php, in config.inc.php you can find line with "$cfg['Servers'][$i]['password'] = '';" and change '' with password you set. You can open phpMyAdmin to know that config is successful. Remember that, links CSS and JS files need the Internet to load successfully.

  You can import cinemaALL.sql to PHPMyAdmin to get all data about this application. If this is not work, you can import sequentially files .sql. Notice that, there are many constraints about the attribute, Foreign Key.

  After all, open the browser and type the directory to index.html, e.g "http://localhost/YourDirectory/index.html" and enjoy that.
