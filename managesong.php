<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylsheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <title>Manager song</title>
</head>
<style type="text/css">
    .carousel-inner .item img {
        margin: auto;
    }
    body{
        background-color: rgba(30,30,32,.9);
    }
    table{
        margin-top: auto;
        margin-left:160px;
        width: 1200px;
        background-color: #F5F5F5;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    }
    .logo{
        text-align: center;
    }
</style>
<body>
<div class="content"> 
<div class="logo">
    <a href="homepage.php"><img style="margin: 15px;" src="Img/weblogo.jpg" width="220px" height="70px"></a> 
    <hr style="color: white;">
</div>         
<table border="1 solid black">
    <tr> 
        <th>Song Id: </th>
        <th>Song Name: </th>
        <th>Price: </th>
        <th>Images: </th>
        <th>Genre: </th>
        <th>Singer: </th>
        <th>Singer images: </th>
        <th>Action: </th>
     </tr> 
        <?php 
        $connect = mysqli_connect('localhost','root','','mydb');
        $sql = "SELECT * FROM song,artist,genre WHERE song.Song_genre = genre.genre_ID and song.Song_artist= artist.artist_ID";
        $result = mysqli_query($connect, $sql);
        while($row= mysqli_fetch_array($result)){
            $Song_id = $row['Song_id'];
            $Song_name = $row['Song_name'];
            $Song_price = $row['Song_price'];
            $Song_Img = $row['Song_Img'];
            $genre_name = $row['genre_name'];
            $Artist_name = $row['Artist_name'];
            $Artist_img = $row['Artist_img']
            ?>
        <tr>
            <td> <?php echo $Song_id ?></td>

            <td> <?php echo $Song_name ?></td>
            <td> <?php echo $Song_price ?></td>
            <td> <img src="Img/<?php echo $Song_Img ?>" style ="width: 160px; height: 160px;"></td>
            <td> <?php echo $genre_name ?></td>
            <td> <?php echo $Artist_name ?></td>
            <td> <img src="Img/<?php echo $Artist_img ?>" style ="width: 160px; height: 160px;"></td>
            <td> <a href='detail.php ?id=<?php echo $Song_id; ?>' class='btn btn-primary'>Details</a></td>
        </tr>
            <?php
            }
            ?>      
</table>
    <a style="width: 100px; height: 40px; text-align: center; margin-left:720px; margin-top:20px; margin-bottom: 20px;" href='homepage.php' class='btn btn-primary'>Back</a>
</div>      
</body>
</html>