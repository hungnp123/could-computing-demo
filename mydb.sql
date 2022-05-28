-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2022 lúc 04:18 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `artist`
--

CREATE TABLE `artist` (
  `Artist_ID` int(11) NOT NULL,
  `Artist_name` varchar(200) NOT NULL,
  `Artist_img` varchar(100) NOT NULL,
  `Artist_dob` varchar(100) NOT NULL,
  `Artist_country` varchar(100) NOT NULL,
  `Artist_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `artist`
--

INSERT INTO `artist` (`Artist_ID`, `Artist_name`, `Artist_img`, `Artist_dob`, `Artist_country`, `Artist_description`) VALUES
(1, 'Lana Del Rey', 'Lana.jpg', 'June 21, 1985', 'American', 'Elizabeth Woolridge Grant, better known by her stage name Lana Del Rey, is an American singer and songwriter. Lana Del Rey started writing music at the age of 18 and she signed her first record deal with 5 Points Records in 2007.'),
(2, 'Emma Stone', 'Emma_stone.jpg', 'November 6, 1988', 'American', 'Emily Jean \"Emma\" Stone is an American actress. As one of the highest-paid actresses in the world in 2015, Stone has received numerous awards, including an Academy Award, a BAFTA Award, a Golden Globe Award, and three Screen Actors Guild Awards.'),
(3, 'Indila', 'indila.jpg', 'June 26, 1984', 'France', 'Adila Sedraïa, better known by her stage name Indila, is a French singer and songwriter. She collaborated with many musicians on vocals and composition before releasing her first single, \"Dernière danse\", in November 2013, which reached the Top 2 of the SNEP in France.'),
(4, 'Sufjan Stevens', 'sufjan.jpg', 'July 1, 1975', 'American', 'Sufjan Stevens is an American singer-songwriter born in Detroit, Michigan. His debut album, A Sun Came, was released in 1999 with the Asthmatic Kitty label, which he co-founded with his stepfather.'),
(5, 'Taylor Swift', 'Taylor.jpg', 'December 13, 1989', 'American', 'Taylor Alison Swift is an American singer and songwriter. Her records span a variety of genres and her narrative compositions, often inspired by her own personal life, have received widespread media and critical acclaim.'),
(6, 'Otto Wallgren', 'Otto.jpg', 'March 9, 1979', 'Sweden', 'Otto Wallgren is a Swedish singer and songwriter of Guatemalan descent. In 2016, Isaac was on Time\'s Time 100 list.'),
(7, 'Naomi Scott', 'Naomi.jpg', 'May 6, 1993', 'United Kingdom and Northern Ireland', 'Naomi Grace Scott (born 6 May 1993) is an English actress and singer. Born in Hounslow, she rose to prominence for her performances in the television film Lemonade Mouth (2011). She achieved further recognition for starring as Princess Jasmine in Disney\'s musical live-action fantasy film Aladdin.'),
(8, 'Kelly Clarkson', 'Kelly.jpg', 'April 24, 1982', 'American', 'Kelly Brianne Clarkson, better known as Kelly Clarkson, is an American singer, songwriter, actress, and author. She rose to fame in 2002 after winning the first season of American Idol, and today she is known by the nicknames \"Original American Idol\" and \"Queen of Covers\".');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `Song_id`) VALUES
(1, 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre`
--

CREATE TABLE `genre` (
  `genre_ID` int(11) NOT NULL,
  `genre_name` varchar(100) NOT NULL,
  `Genre_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genre`
--

INSERT INTO `genre` (`genre_ID`, `genre_name`, `Genre_description`) VALUES
(1, 'Jazz', 'a type of music of black American origin characterized by improvisation, syncopation, and usually a regular or forceful rhythm, emerging at the beginning of the 20th century.'),
(2, 'Pop', 'Pop music is a genre of contemporary music and is very popular in the pop music scene. Pop music originated in the 1950s and has roots in rock and roll music.'),
(3, 'Acoustic', 'In music, acoustic is a word used to refer to an instrument or type of music performed using only traditional instruments without any electronic equipment attached. Example: An acoustic guitar is an acoustic guitar, without a pickup.'),
(4, 'Country', 'Country music is a genre of traditional mixed music found popularly in the US and Canada. The roots of modern country music are traditional white folk music, Celtic music, blues music, gospel music, and much other ancient music. It developed rapidly from the 1920s period.'),
(5, 'Ballad', 'Ballad is gentle, lyrical music derived from country and folk music because of its slow, leisurely melody. Ballad is one of the types of music that uses words as high as not fancy, but enough to inspire and make listeners feel comfortable when enjoying.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `Song_id` int(11) NOT NULL,
  `Song_name` varchar(200) NOT NULL,
  `Song_Img` varchar(100) NOT NULL,
  `Song_price` varchar(100) NOT NULL,
  `song_audio` varchar(200) NOT NULL,
  `Song_genre` int(11) NOT NULL,
  `Song_artist` int(11) NOT NULL,
  `Song_lyric` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`Song_id`, `Song_name`, `Song_Img`, `Song_price`, `song_audio`, `Song_genre`, `Song_artist`, `Song_lyric`) VALUES
(1, 'Art Deco', 'art_deco.jpg', '15$', 'art_deco.mp3', 1, 1, '[Verse 1] Club queen on the downtown scene Prowling around at night You\'re not mean, you\'re just born to be seen Born to be wild A little party never hurt no one, that\'s why it\'s alright You want in but you just can\'t win So you hang in the lights  \r\n[Chorus] You\'re so Art Deco out on the floor Shining like gunmetal, cold and unsure Baby, you\'re so ghetto, you\'re looking to score When they all say hello, you try to ignore them  \r\n[Post-Chorus] \'Cause you want more (Why?) You want more (Why?) You want more (Why?) \'Cause you want more'),
(2, 'City of Stars', 'city_of_stars.jpg', '17$', 'city_of_stars.mp3', 1, 2, '[Ryan]  City of stars, Are you shining just for me? City of stars, There’s so much that i can’t see.  Who knows, I felt it from the first embrace I shared with you…  [Emma]  That now Our dreams, They’ve finally come true.  City of stars, Just one thing everybody wants.  There in the bars, and through the smokescreen of the crowded restaurants, It’s love, Yes, all we’re looking for is love From someone else…  [Ryan-Emma]  – A rush, – A glance, – A touch, – A dance,  [Together]  To look in somebody’s eyes, To light up the skies, To open the world and send me reeling, A voice that says, I’ll be here, and you’ll be alright.  I don’t care if I know Just where I will go ‘Cause all that I need, this crazy feeling,  Ra-ta-tat of my heart –  [Ryan] I think I want it to stay.  City of stars, Are you shining just for me? City of stars,  [Emma]  You never shined so bright-ly.'),
(3, 'Dernière danse', 'derniere_danse.jpg', '14$', 'derniere_danse.mp3', 2, 3, 'Oh ma douce souffrance Pourquoi s\'acharner? Tu recommences Je ne suis qu\'un être sans importance Sans lui, je suis un peu paro Je déambule seule dans le métro Une dernière danse Pour oublier ma peine immense Je veux m\'enfuir que tout recommence Oh ma douce souffrance Je remue le ciel, le jour, la nuit Je danse avec le vent, la pluie Un peu d\'amour, un brin de miel Et je danse, danse, danse, danse, danse, danse, danse Et dans le bruit, je cours et j\'ai peur Est-ce mon tour? Vient la douleur Dans tout Paris, je m\'abandonne Et je m\'envole, vole, vole, vole, vole, vole, vole Que d\'espérance Sur ce chemin en ton absence J\'ai beau trimer Sans toi ma vie n\'est qu\'un décor qui brille, vide de sens Je remue le ciel, le jour, la nuit Je danse avec le vent, la pluie Un peu d\'amour, un brin de miel Et je danse, danse, danse, danse, danse, danse, danse Et dans le bruit, je cours et j\'ai peur Est-ce mon tour? Vient la douleur Dans tout Paris, je m\'abandonne Et je m\'envole, vole, vole, vole, vole, vole vole Dans cette douce souffrance Dont j\'ai payé toutes les offenses Écoute comme mon cœur est immense Je suis une enfant du monde Je remue le ciel, le jour, la nuit Je danse avec le vent, la pluie Un peu d\'amour, un brin de miel Et je danse, danse, danse, danse, danse, danse, danse Et dans le bruit, je cours et j\'ai peur Est-ce mon tour? Vient la douleur Dans tout Paris, je m\'abandonne Et je m\'envole, vole, vole, vole, vole, vole vole'),
(4, 'Mystery of Love', 'mystery_of_love.jpg', '19$', 'mystery_of_love.mp3', 3, 4, 'Oh, to see without my eyes The first time that you kissed me Boundless by the time I cried I built your walls around me White noise, what an awful sound Fumbling by Rogue River Feel my feet above the ground Hand of God, deliver me Oh, oh woe-oh-woah is me The first time that you touched me Oh, will wonders ever cease? Blessed be the mystery of love Lord, I no longer believe Drowned in living waters Cursed by the love that I received From my brother\'s daughter Like Hephaestion, who died Alexander\'s lover Now my riverbed has dried Shall I find no other? Oh, oh woe-oh-woah is me I\'m running like a plover Now I\'m prone to misery The birthmark on your shoulder reminds me How much sorrow can I take? Blackbird on my shoulder And what difference does it make When this love is over? Shall I sleep within your bed River of unhappiness Hold your hands upon my head Till I breathe my last breath Oh, oh woe-oh-woah is me The last time that you touched me Oh, will wonders ever cease? Blessed be the mystery of love'),
(5, 'Red', 'red.jpg', '15$', 'red.mp3', 4, 5, 'Loving him is like driving a new Maserati down a dead-end street Faster than the wind, passionate as sin, ending so suddenly Loving him is like trying to change your mind once you\'re already flying through the free fall Like the colors in autumn, so bright just before they lose it all  Losing him was blue like I\'d never known Missing him was dark grey all alone Forgetting him was like trying to know somebody you never met But loving him was red  (Red, red) (Red, red) Loving him was red (Red, red) (Red, red)  Touching him was like realizing all you ever wanted was right there in front of you Memorizing him was as easy as knowing all the words to your old favorite song Fighting with him was like trying to solve a crossword and realizing there\'s no right answer Regretting him was like wishing you never found out that love could be that strong  Losing him was blue like I\'d never known Missing him was dark grey all alone (whoa) Forgetting him was like trying to know somebody you never met But loving him was red (Red, red) Oh, red (Red, red) Burning red (Red, red) (Red, red)  Remembering him comes in flashbacks and echoes Tell myself it\'s time now, gotta let go But moving on from him is impossible When I still see it all in my head In burning red Burning, it was red  Oh, losing him was blue like I\'d never known Missing him was dark grey all alone (whoa) Forgetting him was like trying to know somebody you never met \'Cause loving him was red (Red, red) Yeah, yeah, red (Red, red) We\'re burning red (Red, red) (Red, red)  And that\'s why he\'s spinnin\' \'round in my head (Red, red) Comes back to me, burning red (Red, red) (Red, red) Yeah, yeah (Red, red)  His love was like driving a new Maserati down a dead-end street'),
(6, 'So High', 'so_high.jpg', '15$', 'so_high.mp3', 2, 6, 'I\'m so high So high  They told me to Sit back Don\'t make a sound Don\'t go to the unknown But I\'m too curious for that  Might be a little crazy I don\'t mind I like the way it feels No need to set off the alarm No  So I won\'t stick with it Running in a wheel, no So I\'ll be taking off Before I\'m dead and gone Oh  I\'m so high So high I\'ll race the aeroplanes up in the sky I\'m so high So high I\'ll dream and fall asleep on clouds tonight Yeah  You see my home is where my heart is So, I reach for higher ground I\'m living out of a suitcase  I\'m getting close Now I can taste it Flavor\'s bitter, still so sweet I see the finish line ahead Oh  Now I\'m in wonderland I won\'t ever come down Just like a satellite Flashing through the night air Oh  I\'m so high So high I\'ll race the aeroplanes up in the sky I\'m so high So high I\'ll dream and fall asleep on clouds tonight Yeah  Ooooooooh Ooooooooh Ooooooooh Oh  Can\'t you see I\'m so high So high I\'ll race the aeroplanes up in the sky In the sky I\'m so high So high I\'ll dream and fall asleep on clouds tonight Yeah'),
(7, 'Speechless', 'speechless.jpg', '17$', 'speechless.mp3', 5, 7, 'Here comes a wave Meant to wash me away A tide that is taking me under Swallowing sand Left with nothing to say My voice drowned out in the thunder But I won\'t cry And I won\'t start to crumble Whenever they try To shut me or cut me down I won\'t be silenced You can\'t keep me quiet Won\'t tremble when you try it All I know is I won\'t go speechless \'Cause I\'ll breathe When they try to suffocate me Don\'t you underestimate me \'Cause I know that I won\'t go speechless Written in stone Every rule, every word Centuries old and unbending Stay in your place Better seen and not heard But now that story is ending \'Cause I I cannot start to crumble So come on and try Try to shut me and cut me down I won\'t be silenced You can\'t keep me quiet Won\'t tremble when you try it All I know is I won\'t go speechless Speechless Let the storm in I cannot be broken No, I won\'t live unspoken \'Cause I know that I won\'t go speechless Try to lock me in this cage I won\'t just lay me down and die I will take these broken wings And watch me burn across the sky Hear the echoes saying I Won\'t be silenced Though you want to see me tremble when you try it All I know is I won\'t go speechless Speechless \'Cause I\'ll breathe When they try to suffocate me Don\'t you underestimate me \'Cause I know that I won\'t go speechless All I know is I won\'t go speechless Speechless'),
(8, 'Stronger', 'stronger.jpg', '14$', 'stronger.mp3', 2, 8, 'You know the bed feels warmer Sleeping here alone You know I dream in color And do the things I want You think you got the best of me Think you had the last laugh Bet you think that everything good is gone Think you left me broken down Think that I\'d come running back Baby you don\'t know me, \'cause you\'re dead wrong What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone What doesn\'t kill you makes a fighter Footsteps even lighter Doesn\'t mean I\'m over \'cause you\'re gone What doesn\'t kill you makes you stronger, stronger Just me, myself and I What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone You heard that I was starting over with someone new But told you I was moving on over you You didn\'t think that I\'d come back I\'d come back swinging You try to break me but you see what doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone What doesn\'t kill you makes a fighter Footsteps even lighter Doesn\'t mean I\'m over \'cause you\'re gone What doesn\'t kill you makes you stronger, stronger Just me, myself and I What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone Thanks to you I got a new thing started Thanks to you I\'m not the broken-hearted Thanks to you I\'m finally thinking \'bout me You know in the end the day to left was just my beginning In the end What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone What doesn\'t kill you makes a fighter Footsteps even lighter Doesn\'t mean I\'m over \'cause you\'re gone What doesn\'t kill you makes you stronger, stronger Just me, myself and What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone What doesn\'t kill you makes you stronger, stronger Just me, myself and I What doesn\'t kill you makes you stronger Stand a little taller Doesn\'t mean I\'m lonely when I\'m alone When I\'m alone');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(0, 'Hungnp', 123),
(1, 'Hungnp1', 123),
(2, 'Hungnp2', 1234),
(3, 'user3', 123);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist_ID`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Song_id` (`Song_id`);

--
-- Chỉ mục cho bảng `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_ID`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Song_id`),
  ADD KEY `Song_artist` (`Song_artist`),
  ADD KEY `Song_genre` (`Song_genre`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`Song_id`) REFERENCES `song` (`Song_id`);

--
-- Các ràng buộc cho bảng `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`Song_artist`) REFERENCES `artist` (`Artist_ID`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`Song_genre`) REFERENCES `genre` (`genre_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
