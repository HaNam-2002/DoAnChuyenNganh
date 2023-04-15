CREATE DATABASE SELLPHONE
GO 
USE SELLPHONE
GO
CREATE TABLE [dbo].[Account](
[uID] [int] IDENTITY(1,1) NOT NULL ,
[user] [varchar](255) NULL,
[pass] [varchar](255) NULL,
[isSell] [int] NULL,
[isAdmin] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED
(
[uID] ASC
)
)
GO
CREATE TABLE [dbo].[Category](
[cID] [int] NOT NULL  ,
[cname] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED
(
[cid] ASC
) 
)
GO

CREATE TABLE [dbo].[product](
[pID] [int] IDENTITY(1,1) NOT NULL ,
[name] [nvarchar](max) NULL,
[image] [nvarchar](max) NULL,
[price] [money] NULL,
[title] [nvarchar](max) NULL,
[description] [nvarchar](max) NULL,
[cID] [int] NULL,
[uID] [int] NULL
CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED
(
[pID] ASC
) 
) 
ALTER TABLE product
ADD FOREIGN KEY (uID) REFERENCES Account(uID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE product
ADD FOREIGN KEY (cID) REFERENCES Category(cID) ON DELETE  CASCADE ON UPDATE CASCADE;
GO
CREATE TABLE [dbo].[Cart](
   [uID] [int] NULL ,
   [pID] [int] NULL,
   [Amount] [int] NULL,
  
) ON [PRIMARY];
ALTER TABLE Cart
ADD FOREIGN KEY (uID) REFERENCES Account(uID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Cart
ADD FOREIGN KEY (pID) REFERENCES product(pId) ON DELETE  CASCADE ON UPDATE  CASCADE;
GO




INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach1', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach2', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach3', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach4', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach5', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Khach6', N'1', 0, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Sell1', N'1', 1, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Sell2', N'1', 1, 0)
INSERT [dbo].[Account] ( [user], [pass], [isSell], [isAdmin]) VALUES ( N'Nam', N'1', 0, 1)

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'IPHONE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'SAMSUNG')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'OPPO')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'XIAOMI')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'PHỤ KIỆN')


INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Iphone 13', N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-starlight-1-600x600.jpg', 100.0000,N'Đỉnh cao thời thượng', N' Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ. Hỗ trợ mạng 5G tốc độ cao. Không gian hiển thị sống động - Màn hình 6.7" Super Retina XDR độ sáng cao, sắc nét. Trải nghiệm điện ảnh đỉnh cao - Cụm 3 camera kép 12MP, hỗ trợ ổn định hình ảnh quang học. ', 1, 7)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Samsung Galaxy Z Flip4', N'https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-5g-128gb-thumb-tim-600x600.jpg', 120.0000,N'Con cưng của nhà SamSung',  N' Ngoại hình thời trang - cầm nắm cực sang với thiết kế gập vỏ sò độc đáo.  Hiệu năng mạnh mẽ đến từ dòng chip cao cấp của Qualcomm - Snapdragon 8+ Gen 1.  Công nghệ màn hình hàng đầu đến từ Samsung - 6.7 inch, tấm nền Dynamic AMOLED 2X. ', 2, 7)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Iphone 13 Pro', N'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-xanh-la-thumb-600x600.jpg', 130.0000,N'Siêu tiết kiệm pin ', N' Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao.  Không gian hiển thị sống động - Màn hình 6.1" Super Retina XDR độ sáng cao, sắc nét. Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút.', 1, 7)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'OPPO A55', N'https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-thumb-new-600x600.jpg', 140.0000,N'Sinh ra để chụp ảnh', N' Màn hình giải trí thoải mái - Màn hình 6.51", HD+.  Lưu giữ mọi khoảng khắc - Camera quay chụp thông minh lên tới 50MP.  Thời gian sử dụng lâu hơn - Pin 5000 mAh, sạc nhanh 18 W.', 2, 7)
INSERT [dbo].[product] ( [name], [image], [price],[title],[description], [cID],  [uID]) VALUES ( N'Xiaomi Redmi Note 11', N'https://cdn.tgdd.vn/Products/Images/42/279066/xiaomi-12t-pro-thumb-bac-1-600x600.jpg', 150.0000, N'Sinh ra để chơi game',N' Nâng cao trải nghiệm thị giác - Màn hình AMOLED 6.43"" Full HD+, công nghệ DotDisplay.  Thoải mái sử dụng không lắng lo - Viên pin 5000 mAh, sạc nhanh 33 W.  Hiệu năng ấn tượng - Snapdragon 680 8 nhân cùng RAM 4GB, bộ nhớ 64GB. ', 1, 8)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Xiaomi 12T Pro', N'https://cdn.tgdd.vn/Products/Images/42/234621/Xiaomi-12-xam-thumb-mau-600x600.jpg', 160.0000, N'Sạc siêu nhanh chưa đầy 15p',N' Kiến tạo siêu khoảnh khắc - Hệ thống camera 200MP, chống rung quang học OIS và ống kính 8P.  Thiết kế siêu việt - Trọn vẻ đẹp sang trọng, đẳng cấp, vỏ nhám chống bám vân tay, khung kim loại cứng cáp, độc đáo.  Năng lượng bất tận, khám phá cả ngày - Dung lượng pin 5000mAh, sạc siêu nhanh HyperCharge 120W. ', 2, 7)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Iphone 12 Mini', N'https://cdn.tgdd.vn/Products/Images/42/228742/iphone-12-mini-do-600x600.jpeg', 170.0000, N'Hiệu năng cực đỉnh ',N' Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao.  Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield.  Chụp ảnh siêu đỉnh - Night Mode , thuật toán Deep Fusion, Smart HDR 3, camera LiDar. ', 1, 8)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'OPPO Reno 8 Pro', N'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-thumb-xanh-1-600x600.jpg', 150.0000,N'Gấp đôi hiệu suất ', N' Chuyên gia chân dung, bừng sáng khoảnh khắc đêm - Cụm camera 64MP + 2MP + 2MP hiện đại.  Sạc nhanh siêu tốc, tràn đầy năng lượng cho cả ngày - Viên pin 4500mAh, Sạc nhanh siêu tốc 33W.  Gấp đôi hiệu suất, xử lí mọi tác vụ - Con chip Qualcomm Snapdragon 680 mạnh mẽ trong phân khúc. ', 4, 8)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'SamSung Galaxy A23 (99%) ', N'https://cdn.tgdd.vn/Products/Images/42/262650/samsung-galaxy-a23-cam-thumb-600x600.jpg', 180.0000,N'Trả góp 0%', N' Nâng cao trải nghiệm với màn hình chất lượng - Màn hình LCD 6.6 inch Full HD+.  Hiệu năng ấn tượng mạnh mẽ - Snapdragon 680 (SM6225), RAM dung lượng 4GB.  Pin dung lượng 5000mAh, sạc nhanh ấn tượng - 5.000 mAh, sạc nhanh 25W. ', 3, 8)
INSERT [dbo].[product] ( [name], [image], [price],[title],[description], [cID],  [uID]) VALUES ( N'SamSumGalaxyZ (99%) ', N'https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-kem-256gb-600x600.jpg', 180.0000,N'Trả góp 0%', N' Camera mắt thần bóng đêm cho trải nghiệm chụp ảnh ấn tượng - Camera chính: 50MP.  Khai mở trải nghiệm di động linh hoạt biến hóa - Màn hình ngoài 6.2"" cùng màn hình chính 7.6"" độc đáo.  Viên pin ấn tượng, sạc nhanh tức tốc - Pin 4,400 mAh, sạc nhanh 25 W. ', 4, 8)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Dây Cáp 30-Pin Cho iP/iPd 2 3 4', N'https://cf.shopee.vn/file/c727ae93a663ad79d309254fcafba4b0', 180.0000, N'Sạc đến 5000mah', N'Sử dụng sạc và truyền dữ liệu. Tương thích cho các dòng dùng chuẩn 30-pin. Chiều dài: 1m',5, 8 )
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Cáp Type C - Type C 2m Xmobile TCS2000', N'https://cdn.tgdd.vn/Products/Images/58/258245/cap-type-c-type-c-2m-xmobile-tcs2000-thumb-600x600.jpeg',180.0000,N'Tận 2 cổng sạc', N'Dây có độ dài 2 m dễ quấn lại và mang theo đến bất kỳ nơi nào. Dòng sạc tối đa 100 W giúp nạp pin cho thiết bị nhanh chóng. Trang bị 2 jack cắm Type-C sử dụng được với các thiết bị có cổng Type-C phù hợp. ',5,8)
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'BỘ CỦ CÁP SẠC SIÊU NHANH 45W DÀNH CHO SAMSUNG', N'https://salt.tikicdn.com/cache/600x600/ts/product/1a/ad/d7/b76808ef97432f364440508ca58cd98e.jpg',180.0000,N'Giá rẻ tiện lợi ', N'Thiết kế gọn nhẹ, phù hợp khi di chuyển. Kèm theo cáp USB-C cho khả năng sạc nhanh với nguồn điện ra. ',5, 8 )



Delete  product;
Delete  from Account;
Delete  from Category;
select * from category;
use SELLPHONES
select * from product
select * from account where	[user] = 'daitoan'
INSERT [dbo].[product] ( [name], [image], [price],[title], [description], [cID], [uID]) VALUES ( N'Iphone 13', N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-starlight-1-600x600.jpg', 100.0000,N'Đỉnh cao thời thượng', N' Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ. Hỗ trợ mạng 5G tốc độ cao. Không gian hiển thị sống động - Màn hình 6.7" Super Retina XDR độ sáng cao, sắc nét. Trải nghiệm điện ảnh đỉnh cao - Cụm 3 camera kép 12MP, hỗ trợ ổn định hình ảnh quang học. ', 1, 7)

update account set pass = 'c4ca4238a0b923820dcc509a6f75849b' where pass = '1'

select * from product where cID = 1;
                