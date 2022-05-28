<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>Detail</title>
<style type="text/css">
	.carousel-inner .item img {
        	margin: auto;
    	}
	body{
    		background-image: url(Img/login3.jpg);
    	}
	.container{
		width: auto;
		height: auto;
	}
	.infor{
		background:rgba(255,255,255,.9);
		margin-bottom: 20px;
    		height: auto;
    		width: auto;
    		text-align: center;
   		border-radius: 4%;
   		margin-top: 30px;
   		margin-left:420px;
   		margin-right:15px;
    		box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    		padding-right: 30px;
    		padding-bottom: 5px;
	}
	.infor ul li{
		list-style: none;
	}
	.images-detail img {
  		border-radius: 100%;
    		animation: app-logo-spin infinite 20s linear
	}
	.images-detail img {
		border: 10px solid transparent;
	}
	.images-detail img {
		border-radius: 100%;
    		margin-bottom: 10px;
	}
	.images-detail img:hover {
    		border-color: #99CCFF;
    	}
	@keyframes app-logo-spin {
	    from {
	        transform: rotate(0deg);
	    }
	    to {
	        transform: rotate(360deg);
	    }
	}

</style>
</head>
<body>      
<div class="container">    
	<div class="row">
		<?php
		session_start();
		$connect = mysqli_connect('localhost','root','','mydb');
		$id = $_GET["id"];
		$sql = "SELECT * FROM song,artist,genre WHERE song.Song_genre = genre.genre_ID and song.Song_artist = artist.Artist_ID and Song_id ={$id}";		
		$result = mysqli_query($connect,$sql);
		while($row= mysqli_fetch_array($result)){
			$id = $row['Song_id'];
			?>
			<div class="col-md-6 col-lg-6 infor">
				<ul>	
				<li><h2> Name: <?php echo $row['Song_name'];?> </h2></li>
				<li><h4> Singer: <?php echo $row["Artist_name"] ;?></h4></li>
				<li><p> Price: <?php echo $row['Song_price'];?> </p></li>
				<li><p> Genre:<?php echo $row["genre_name"]; ?></p></li>
				<div class="images-detail">
				<img src="IMG/<?php echo $row['Song_Img'] ?>" style = "width: 300px;height: 300px;">
				</div>
				<li><audio controls controlsList="nodownload" ontimeupdate="myAudio(this)" style="width: 450px;">
					   	<source src="audio/<?php echo $row['song_audio'];?>" type="audio/mpeg">
					   </audio>
					   <script type="text/javascript">
					   	function myAudio(event){
					   		if(event.currentTime>15){
					   			event.currentTime=0;
					   			event.pause();
					   			alert("Bạn phải trả phí để nghe cả bài");
					   		}
					   	}
					   </script></li>	   
					   <li><textarea cols="60" rows="10" disabled><?php echo $row["Song_lyric"];?></textarea></li>
				</ul>	  
			

			<?php
		}

	?>
	</div>
</div>
<a style="width: 100px; height: 40px; text-align: center; margin-left:620px; margin-bottom: 20px;" href='homepage.php' class='btn btn-primary'>Back</a>
</body>
</html>