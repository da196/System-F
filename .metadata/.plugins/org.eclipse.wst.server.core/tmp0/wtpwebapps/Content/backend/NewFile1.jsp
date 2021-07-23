<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
</head>
<body>

<!--  

<video autoplay="" muted="" poster="" id="myVideo">
    <source src="vid/channel10/video_1010.mp4" id="mp4Source" type="video/mp4">
    Your browser does not support the video tag.
</video>
<br>
<video autoplay="" muted="" poster="" id="myVideo2">
    <source src="vid/tbc/video_1001.mp4" id="mp4Source2" type="video/mp4">
    Your browser does not support the video tag.
</video>

-->
<audio id="classic-audio" controls>
 <source src="vid/file1.mp3" id="mp4Source3" type="audio/mp3">
</audio>


<script type='text/javascript'>
   var count=1010;
   var player=document.getElementById('myVideo');
   var mp4Vid = document.getElementById('mp4Source');
   player.addEventListener('ended',myHandler,false);
   
   var count1=1001;
   var player1=document.getElementById('myVideo2');
   var mp4Vid1 = document.getElementById('mp4Source2');
   player1.addEventListener('ended',myHandler2,false);
   
   function myHandler(e)
   {

      if(!e) 
      {
         e = window.event; 
      }
      count++;
      $(mp4Vid).attr('src', "vid/channel10/video_"+count+".mp4");
      player.load();
      player.play();

   }
   
   function myHandler2(e)
   {

      if(!e) 
      {
         e = window.event; 
      }
           
      count1++;
      $(mp4Vid1).attr('src', "vid/tbc/video_"+count1+".mp4");
      player1.load();
      player1.play();
   }

</script>

</body>
</html>