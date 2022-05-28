<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style >
    .carousel-inner  .item img {
      margin: auto;     
    }
    body{
      background-image: url(Img/login3.jpg);
    }
    .wrapper{
        width:  auto;
        margin: auto;
        height: auto;
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
    .product-group {
      background-color: royalblue;
    }
  </style>
</head>
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
  <?php
              $connect=mysqli_connect('localhost','root','','mydb');
              if (!$connect)
              {
                echo (" Not connect");
              }
              $Search = "";
              if( !empty($_GET['search']))
              {
                $Search = $_GET['search'];
              }
              ?>
              <h3 style="color: white;" class="title"> Search Result for: <?= $Search ?></h3>
              <div class="container">
                <div class="row">
                  <?php
                  if( !empty($Search))
                  {
                    $sql="SELECT * FROM song,artist,genre WHERE song.Song_name LIKE'%{$Search}%' AND song.Song_artist =artist.Artist_ID AND song.Song_genre =genre.genre_ID";
                    $rs=mysqli_query($connect,$sql);
                    while($row = mysqli_fetch_assoc($rs))
                    {
                      ?>
                      <div class="card" style="background-color: white;margin-top:20px; margin-bottom: 30px;margin-left: 350px;overflow: auto; width: 500px; border: 2px solid #F8ABAB; border-radius: 1px;border-bottom: 6px solid #FCA5A5;text-align: center;">
                        <a href="detail.php?id=<?php echo $row['Song_id']?>" style="text-decoration: none;text-align: center;"> 
                          <div style="height: 80px;">
                            <h2><?php echo $row['Song_name'] ?></h2>
                          </div>

                          <div><img src="img/<?php echo $row['Song_Img']?>" style="width: 300px;height: 300px;padding: 7px;">
                            <p style="color: red"><?php echo $row['Song_price']?></p>
                            <h4 style="color: #3BA33D"><?php echo $row['Artist_name']?></h4>
                            <h3>Genre: <?php echo $row['genre_name'] ?></h3>
                          </a>
                        </div>
                        <?php
                      }
                    }
                    ?>
</body>
</html>