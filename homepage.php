<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
    .carousel-inner .item img {
        margin: auto;
    }
    body{
    	background-color: rgba(30,30,32,.9);
    }
    .wrapper{
        width:  auto;
        margin: auto;
        height: auto;
    }   
    .header{
    	
    }
    .header ul li{
    	list-style: none;
    }
    .header img{
    	float:left;
    }
	.header a{
		margin-top: 15px;
		margin-right: 10px;
		margin-left: 10px;
		margin-bottom: 15px;
	}
	.single-song{
		text-align: center;
		width: auto;
		height: auto;
	}
	.single-song h4{
    	margin-top: 20px;
    	color: white;
    	text-align: center;
    }
    .song-box{
        margin-bottom: 30px;
    	height: 370px;
    	width: 300px;
    	text-align: center;
    	border-radius: 4%;
    	margin-left:15px;
    	margin-right:15px;
    	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
 		background:rgba(30,30,32,.9);
    }
    input[type=submit]{
        border-color: #0080FF;
        color: white;
        border-radius: 0px;
        font-weight: bold;
        letter-spacing: 1px;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
        background-color: #0080FF;
        right: 0px;
        margin-bottom: 25px;
    }
    .card-img-top {
    	border: 10px solid transparent;
    }
    .card-img-top:hover {
    	border-color: #99CCFF;
    }
    .card-img-top{
    	border-radius: 100%;
    	margin-bottom: 10px;
    }
    #form-search input[type=text]{
        width: 200px; height: 30px;
    }
    #form-search input[type=submit]{
        height: 30px;
    }
</style>
<body>
	<div class="wrapper">
		<div class="header">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>                        
						</button>
						<a href="homepage.php"><img style="margin: 15px;" src="Img/weblogo.jpg" width="180px" height="50px"></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
							<li><a href="homepage.php"><span class=" glyphicon glyphicon-home"> Home</a></li>
								<li class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"> Account<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="login2.php">Login</a></li>
										<li><a href="signup.php">Sign Up</a></li>
										<li><a href="cart.php">Cart</a></li>
									</ul>
								</li>
								<li><a href="managesong.php"><span class=" glyphicon glyphicon-music"> Song</a></li>
								<li><a href="introduction.php"><span class=" glyphicon glyphicon-bookmark"> About us</a></li>
						</ul>
							<ul class="nav navbar-nav navbar-right">
								<div style="margin-top: 25px;" id="form_search">
									<form method="get" action="search.php">
										<input type="text" name="user_query" placeholder="Search a music" />
										<input type="submit" name="Search" value="search" />
									</form>
								</div>	
							</ul>
					</div>
				</div>
			</nav>	
		</div>
			<div class="banner">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
    				<ol class="carousel-indicators">
      					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      					<li data-target="#myCarousel" data-slide-to="1"></li>
      					<li data-target="#myCarousel" data-slide-to="2"></li>
   					 </ol>
                    <div class="carousel-inner" role="listbox">
      					<div class="item active">
        					<img  src="Img/banner2.jpg" width="1000" height="500" alt="banner 1">    
      					</div>
     					<div class="item">
                            <img src="Img/banner6.jpg" width="1000Px" height="500Px" alt="banner 2">
      					</div>
      					<div class="item">
        					<img src="Img/banner7.jpg" width="1000Px" height="500Px" alt="banner 3">
      					</div>
    				</div>
    				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    					<span class="sr-only">Previous</span>
    				</a>
    				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    					<span class="sr-only">Next</span>
    				</a>
                </div>
            </div>
        <div class="content"> 
        	<div class="right1">
        		<div class="col-xs-12 col-lg-12 col-md-12">
        			<hr>
            		<h3 style="text-align: center; color:#2D6AE5; font-family:Comic Sans Ms;">=============== Featured Song ===============</h3>
            		<hr>
            		<br>
        		</div>
            		<div class="ftsong">
            			<?php 
            			$connect = mysqli_connect('localhost','root','','mydb');
            			if(!$connect){
            				echo "Kết nối thất bại";
            			}
            			$sql="SELECT * FROM song";

            			$result = mysqli_query($connect,$sql);
            			while($row= mysqli_fetch_array($result)){
            				$song_id = $row['Song_id'];
            				$row['Song_name'];
            				$row['Song_Img'];
            				$row['Song_price'];
            				$row['Song_genre'];
            				$row['song_audio'];
            				$row['Song_artist'];
            				?>
            				<div class="single-song">
            					<div class=" col-xs-12 col-lg-3 song-box">                         
            						<h4> <?php echo $row['Song_name'] ?></h4></li>
            						<img class="card-img-top" src="Img/<?php echo $row['Song_Img'] ?>" width="200px" height="200px">
            							<audio controls controlsList="nodownload" ontimeupdate="myAudio(this)" style="width: 240px;">
            							<source src="audio/<?php echo $row['song_audio'];?>" type="audio/mpeg">
            							</audio>
            							<script type="text/javascript">
            								function myAudio(event){
            									if(event.currentTime>15){
            										event.currentTime=0;
            										event.pause();
            										alert("Please pay to listen full song");
            									}
            								}
            							</script>
            							<a href='detail.php?id=<?php echo $song_id; ?>' class='btn btn-primary'>Details</a>		
            					</div>
            				</div>  
            				<?php
            				}
            				?>
            </div>	
        </div>
     </div>  	
</body>
</html>