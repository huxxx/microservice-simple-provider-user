<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
  <head>
    <title>生成二维码</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/jquery.qrcode.min.js"></script>
  </head>
  <body>
  生成的二维码如下<br>
  <div id="qrcode"></div>
  <script>
    $('#qrcode').qrcode("http://47.100.49.91/microservice-simple-provider-user-0.0.1-SNAPSHOT/personDetail");
  </script>
  </body>
</html>