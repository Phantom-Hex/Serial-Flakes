USE [master]
GO

/****** Object:  Database [Akihabara]    Script Date: 11/17/2016 2:29:43 PM ******/
CREATE DATABASE [Akihabara]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Akihabara', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Akihabara.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Akihabara_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Akihabara_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Akihabara] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Akihabara].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Akihabara] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Akihabara] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Akihabara] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Akihabara] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Akihabara] SET ARITHABORT OFF 
GO

ALTER DATABASE [Akihabara] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Akihabara] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Akihabara] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Akihabara] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Akihabara] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Akihabara] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Akihabara] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Akihabara] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Akihabara] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Akihabara] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Akihabara] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Akihabara] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Akihabara] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Akihabara] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Akihabara] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Akihabara] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Akihabara] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Akihabara] SET RECOVERY FULL 
GO

ALTER DATABASE [Akihabara] SET  MULTI_USER 
GO

ALTER DATABASE [Akihabara] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Akihabara] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Akihabara] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Akihabara] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Akihabara] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Akihabara] SET QUERY_STORE = OFF
GO

USE [Akihabara]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Akihabara] SET  READ_WRITE 
GO

USE [Akihabara]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[devices](
	[id] [int] NOT NULL,
	[device_name] [nchar](50) NULL,
	[device_code] [nchar](50) NULL,
	[device_SKU] [nchar](50) NULL,
	[device_description] [nchar](300) NULL,
	[device_pic] [nchar](100) NULL,
 CONSTRAINT [PK_devices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (1, 'Douglas-Marks', 878580252214, '777529429-9', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem', 'http://dummyimage.com/143x151.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (2, 'Baumbach LLC', 177560938310, '565310626-7', 'arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', 'http://dummyimage.com/209x237.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (3, 'O''Conner-Ruecker', 354789362812, '282883924-9', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', 'http://dummyimage.com/145x127.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (4, 'Cassin, Marquardt and Gibson', 326345058897, '470793543-5', 'risus praesent lectus vestibulum quam sapien varius ut blandit non interdum', 'http://dummyimage.com/114x216.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (5, 'Jaskolski Inc', 246808004435, '801785598-2', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 'http://dummyimage.com/153x248.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (6, 'Prosacco-Maggio', 149838060118, '278802469-X', 'enim sit amet nunc viverra dapibus nulla suscipit ligula in', 'http://dummyimage.com/186x208.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (7, 'Turner, Murray and Raynor', 969217893542, '088814494-6', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 'http://dummyimage.com/164x146.jpg/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (8, 'Halvorson-Casper', 67366751401, '201787379-9', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', 'http://dummyimage.com/222x100.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (9, 'Deckow, Jacobson and Emmerich', 454291520007, '502840097-0', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', 'http://dummyimage.com/171x160.bmp/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (10, 'Marvin Group', 107221802532, '364740680-5', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', 'http://dummyimage.com/185x230.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (11, 'Walker-Stracke', 902022376431, '376665200-1', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', 'http://dummyimage.com/101x118.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (12, 'Hodkiewicz-Klein', 662234943213, '915334491-X', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', 'http://dummyimage.com/134x120.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (13, 'Klein Group', 326650275128, '862466956-1', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', 'http://dummyimage.com/249x155.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (14, 'Hilpert, Kuvalis and Cronin', 520134383602, '389866882-7', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec', 'http://dummyimage.com/100x128.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (15, 'Rolfson LLC', 33524380008, '799432596-3', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'http://dummyimage.com/237x217.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (16, 'Kunde-Skiles', 693841204837, '159297271-3', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', 'http://dummyimage.com/230x214.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (17, 'Konopelski-Rosenbaum', 802612083188, '112411782-2', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', 'http://dummyimage.com/175x113.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (18, 'Rippin-Romaguera', 519140391391, '479058998-6', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', 'http://dummyimage.com/184x208.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (19, 'Raynor Inc', 641351169749, '220135939-3', 'turpis enim blandit mi in porttitor pede justo eu massa donec', 'http://dummyimage.com/228x167.jpg/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (20, 'Sanford-O''Connell', 957270833827, '637779057-0', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', 'http://dummyimage.com/181x182.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (21, 'Murazik and Sons', 229403602451, '710805386-1', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', 'http://dummyimage.com/238x204.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (22, 'Kutch-Rowe', 262046248322, '581567426-5', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 'http://dummyimage.com/219x123.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (23, 'Von Inc', 580368822592, '358334575-4', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'http://dummyimage.com/192x114.bmp/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (24, 'Roob, Ruecker and Durgan', 593111142597, '483578315-8', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 'http://dummyimage.com/199x231.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (25, 'McClure-McKenzie', 751050108983, '853035036-7', 'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'http://dummyimage.com/190x250.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (26, 'Yundt Inc', 120759423161, '481418211-2', 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 'http://dummyimage.com/150x245.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (27, 'Bosco-Kunde', 266740384245, '853973094-4', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', 'http://dummyimage.com/178x103.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (28, 'Davis, Abshire and Ziemann', 619535480522, '542747998-8', 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'http://dummyimage.com/222x246.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (29, 'Johnson LLC', 314412121954, '399360898-4', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'http://dummyimage.com/106x232.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (30, 'Lehner-Runolfsdottir', 79715456866, '367556679-X', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante', 'http://dummyimage.com/201x164.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (31, 'Macejkovic, Toy and Runolfsdottir', 470115059701, '800350111-3', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'http://dummyimage.com/192x184.bmp/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (32, 'Frami, Collins and Kuvalis', 684576133199, '826596626-1', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', 'http://dummyimage.com/147x118.png/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (33, 'Marks Group', 920084326232, '259930922-0', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', 'http://dummyimage.com/147x203.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (34, 'Huel, Jacobson and Rohan', 284522987836, '377597440-7', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 'http://dummyimage.com/250x238.jpg/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (35, 'Mayer, McLaughlin and Beer', 533147935315, '045014768-1', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 'http://dummyimage.com/102x208.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (36, 'Gibson-Ritchie', 902096146860, '203868847-8', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'http://dummyimage.com/247x111.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (37, 'Carroll Inc', 748449588975, '599851595-1', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst', 'http://dummyimage.com/220x162.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (38, 'Beahan, Wisozk and Koch', 41336228665, '681761623-9', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'http://dummyimage.com/176x135.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (39, 'Lehner and Sons', 901302991334, '601530330-1', 'quam a odio in hac habitasse platea dictumst maecenas ut', 'http://dummyimage.com/155x131.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (40, 'Auer Inc', 326948586831, '097187080-2', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', 'http://dummyimage.com/121x189.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (41, 'Schroeder, Powlowski and Block', 885033439319, '658975653-8', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget', 'http://dummyimage.com/172x127.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (42, 'Orn, Bruen and Wisozk', 854602902226, '815702187-1', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 'http://dummyimage.com/250x139.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (43, 'Bosco, Thiel and Ratke', 680803468781, '448214332-4', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 'http://dummyimage.com/219x108.png/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (44, 'Ryan LLC', 407882854511, '332535792-X', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 'http://dummyimage.com/104x106.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (45, 'Feest-Welch', 906275976856, '434421075-1', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 'http://dummyimage.com/180x144.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (46, 'Rutherford and Sons', 661644686779, '684938611-5', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', 'http://dummyimage.com/119x111.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (47, 'Legros LLC', 787913161680, '924054334-1', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 'http://dummyimage.com/245x181.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (48, 'Turner, West and Bode', 352410731662, '919629735-2', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', 'http://dummyimage.com/152x207.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (49, 'Thiel-Cummings', 913525232562, '410533807-2', 'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', 'http://dummyimage.com/213x172.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (50, 'Schmidt Group', 448763700877, '985678402-6', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 'http://dummyimage.com/202x228.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (51, 'Crona-Wilkinson', 901221215416, '977412901-6', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 'http://dummyimage.com/172x205.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (52, 'Pfeffer, Stoltenberg and Bergnaum', 795869150538, '249999861-X', 'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus', 'http://dummyimage.com/107x233.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (53, 'Wiegand-Corwin', 171276577953, '672864939-5', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et', 'http://dummyimage.com/238x144.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (54, 'O''Hara and Sons', 978699275464, '261654655-8', 'at velit eu est congue elementum in hac habitasse platea', 'http://dummyimage.com/215x216.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (55, 'West, Quigley and Schmidt', 894842788069, '605580140-X', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', 'http://dummyimage.com/146x159.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (56, 'Halvorson LLC', 606733278268, '110763213-7', 'ligula nec sem duis aliquam convallis nunc proin at turpis', 'http://dummyimage.com/112x139.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (57, 'Padberg LLC', 724962379950, '510202084-6', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 'http://dummyimage.com/172x191.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (58, 'Corwin, Batz and Beahan', 54390332005, '024411489-7', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'http://dummyimage.com/161x160.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (59, 'DuBuque, Lehner and Harvey', 801832364155, '157550129-5', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 'http://dummyimage.com/241x234.jpg/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (60, 'Kunze, Heller and Dickens', 66807820463, '209900598-2', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', 'http://dummyimage.com/222x111.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (61, 'Roob-Tromp', 687765532347, '721122254-9', 'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', 'http://dummyimage.com/158x189.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (62, 'Lehner, Stoltenberg and Brakus', 617938830500, '967310566-9', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', 'http://dummyimage.com/167x241.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (63, 'Emard, Waters and Eichmann', 283902465579, '420002375-X', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', 'http://dummyimage.com/180x240.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (64, 'Mraz LLC', 611116920494, '496663696-5', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'http://dummyimage.com/105x109.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (65, 'O''Keefe and Sons', 81384486263, '035460756-1', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'http://dummyimage.com/142x220.jpg/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (66, 'Schulist and Sons', 233202062902, '428214621-4', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', 'http://dummyimage.com/100x129.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (67, 'Runolfsson-Haley', 412624341860, '755099124-3', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', 'http://dummyimage.com/111x166.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (68, 'Mraz-Kling', 47145239398, '203990055-1', 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 'http://dummyimage.com/245x248.bmp/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (69, 'Rath Inc', 400125621386, '506002426-1', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 'http://dummyimage.com/230x193.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (70, 'Carroll Inc', 457098708400, '413610754-4', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', 'http://dummyimage.com/133x131.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (71, 'Shields-Ortiz', 158557715388, '047407092-1', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', 'http://dummyimage.com/191x229.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (72, 'Hackett, Hammes and Weimann', 53905807825, '709848152-1', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 'http://dummyimage.com/139x247.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (73, 'Kuvalis-Runolfsson', 789388096976, '435694360-0', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 'http://dummyimage.com/190x209.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (74, 'Schoen-Cartwright', 159455925312, '904659677-X', 'rutrum neque aenean auctor gravida sem praesent id massa id', 'http://dummyimage.com/103x200.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (75, 'Abernathy-Brekke', 23076661394, '058002407-5', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam', 'http://dummyimage.com/247x192.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (76, 'Ortiz, Hand and Franecki', 253940966392, '629235787-2', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', 'http://dummyimage.com/157x147.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (77, 'Nikolaus-Wehner', 414156062391, '075364471-1', 'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 'http://dummyimage.com/126x155.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (78, 'D''Amore-Reilly', 153485512699, '238141252-2', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 'http://dummyimage.com/209x127.bmp/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (79, 'Wuckert, Gerhold and Jerde', 368126157343, '944227430-9', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'http://dummyimage.com/209x135.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (80, 'Bruen Inc', 859542880851, '273674676-7', 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 'http://dummyimage.com/140x238.jpg/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (81, 'Welch, Monahan and Heller', 884052060979, '882952200-7', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 'http://dummyimage.com/163x241.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (82, 'Lebsack-Hermann', 723724301385, '426217395-X', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 'http://dummyimage.com/131x209.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (83, 'Bednar Inc', 601785510775, '962959667-9', 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', 'http://dummyimage.com/196x234.png/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (84, 'Herman and Sons', 955792582699, '458313260-3', 'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', 'http://dummyimage.com/209x216.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (85, 'Prohaska-Tillman', 270737112776, '328074170-X', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', 'http://dummyimage.com/208x155.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (86, 'Braun, Herman and Emard', 15307587644, '831803130-X', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 'http://dummyimage.com/241x161.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (87, 'Blick, Adams and Abshire', 30719960716, '720380424-0', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', 'http://dummyimage.com/237x238.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (88, 'Murphy, Romaguera and D''Amore', 650411531059, '370992296-8', 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', 'http://dummyimage.com/121x111.png/cc0000/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (89, 'Hane-Stanton', 513176926045, '217864881-9', 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 'http://dummyimage.com/137x153.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (90, 'Koepp, McGlynn and Schoen', 903015700204, '816189960-6', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 'http://dummyimage.com/156x246.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (91, 'Lakin LLC', 712063182094, '966631865-2', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', 'http://dummyimage.com/221x125.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (92, 'Mohr, Denesik and Luettgen', 216598441081, '511881090-6', 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'http://dummyimage.com/246x215.jpg/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (93, 'Metz, Bartoletti and Parker', 170390928385, '409143637-4', 'consequat ut nulla sed accumsan felis ut at dolor quis', 'http://dummyimage.com/107x115.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (94, 'Welch-Roberts', 779485917553, '830240293-1', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'http://dummyimage.com/194x206.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (95, 'Cronin-Durgan', 177850407184, '431131093-5', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'http://dummyimage.com/190x245.bmp/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (96, 'Barrows, Kirlin and West', 744653920140, '294517871-0', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 'http://dummyimage.com/232x142.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (97, 'Ruecker-Mertz', 450279597267, '299862150-3', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', 'http://dummyimage.com/160x152.png/5fa2dd/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (98, 'Kertzmann and Sons', 999335906222, '178461570-6', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', 'http://dummyimage.com/188x180.bmp/dddddd/000000');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (99, 'Conn, Bernhard and Smith', 715757925926, '479675260-9', 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus', 'http://dummyimage.com/146x180.jpg/ff4444/ffffff');
insert into devices (id, device_name, device_code, device_SKU, device_description, device_pic) values (100, 'Donnelly, Mueller and Cole', 951502914650, '584310288-2', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', 'http://dummyimage.com/125x227.png/dddddd/000000');
GO

