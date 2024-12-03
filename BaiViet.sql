USE quanlyshopdienthoai;

CREATE TABLE baiViet (
    tieuDe VARCHAR(255) PRIMARY KEY,
    moDau TEXT,
    noiDung TEXT,
    ketLuan TEXT,
    hinhAnh1 VARCHAR(255),
    hinhAnh2 VARCHAR(255),
    ngayTao DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO baiViet (tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2)
VALUES (
    'iPhone 16 có gì mới? Tính năng nổi bật trên iPhone 16',
    'Tại sự kiện It\'s Glowtime đầy ấn tượng, iPhone 16 đã chính thức ra mắt, làm nóng thị trường điện thoại cuối năm 2024. Vậy iPhone 16 giá bao nhiêu, có gì mới? Tính năng nổi bật trên iPhone này là gì? Hãy cùng khám phá trong bài viết bên dưới nhé!',
    'iPhone 16 Series được trình làng vào 0 giờ ngày 10/09/2024 theo giờ Việt Nam tại sự kiện It\'s Glowtime tổ chức ở Apple Park. Sự kiện này đánh dấu màn ra mắt của iPhone 16 Series cùng nhiều sản phẩm công nghệ đỉnh cao khác như Apple Watch Series 10, Apple Watch Ultra 2 và các phiên bản tai nghe AirPods 4 mới.\n\nCác cải tiến mới nổi bật của iPhone 16 bao gồm:\n\nKích thước màn hình lớn đến 6.9 inch.\n\niPhone 16 Pro Max sở hữu màn hình khủng lên đến 6.9 inch, đánh dấu một bước tiến mới về kích thước hiển thị trên iPhone. So với 6.7 inch của iPhone 15 Pro Max, sự nâng cấp này không chỉ mang đến trải nghiệm xem phim, chơi game đã mắt hơn mà còn hiển thị được nhiều nội dung hơn. Ngoài ra, không gian rộng rãi của màn hình cũng cho phép Apple bố trí thêm linh kiện hoặc tăng dung lượng pin, giúp kéo dài thời gian sử dụng cho thiết bị.\n\nThiết kế camera dọc.\n\niPhone 16 thường và iPhone 16 Plus lột xác với thiết kế camera dọc thay cho cụm camera chéo quen thuộc trên các thế hệ trước. Bố cục này không chỉ mang đến diện mạo mới mẻ, hiện đại hơn mà còn được cho là tối ưu hơn cho việc quay video 3D, đặc biệt là khi kết hợp với kính thực tế tăng cường Apple Vision Pro.\n\nBằng cách sắp xếp hai camera theo chiều dọc, căn chỉnh chính xác về chiều cao, iPhone 16 có thể thu được hình ảnh 3D chất lượng cao và mang đến trải nghiệm thực tế ảo sống động hơn cho người dùng.\n\nNút action mới.\n\niPhone 16 Series chào đón một kỷ nguyên mới bằng việc thay thế nút gạt rung truyền thống bằng nút Action Button đa năng hoàn toàn mới. Nút này cho phép người dùng tùy chỉnh chức năng theo ý muốn, từ chuyển chế độ chuông, bật đèn pin, chụp ảnh màn hình cho đến mở nhanh ứng dụng yêu thích. Sự linh hoạt này giúp chiếc điện thoại trở nên cá nhân hóa hơn, đáp ứng tối đa nhu cầu sử dụng đa dạng của mỗi người.\n\nNút điều khiển camera.\n\nNằm ở cạnh viền máy, nút bấm vật lý mới cho phép người dùng mở nhanh ứng dụng camera, chụp ảnh hoặc quay video chỉ với một cái chạm. Hơn thế nữa, bạn còn có thể tùy chỉnh chức năng cho nút này, ví dụ như zoom hoặc lấy nét, giúp việc điều khiển camera trở nên thuận tiện và nhanh chóng hơn bao giờ hết.\n\nKết nối Wi-Fi 7.\n\niPhone 16 Series là một trong những dòng điện thoại tiên phong hỗ trợ chuẩn kết nối Wi-Fi 7 mới nhất. Với tốc độ truyền dữ liệu thần tốc, băng thông rộng hơn và độ trễ thấp hơn so với Wi-Fi 6, Wi-Fi 7 mang đến cho người dùng trải nghiệm mượt mà hơn khi tải xuống nội dung, xem video trực tuyến, chơi game online và thực hiện các tác vụ đòi hỏi kết nối mạng ổn định. Ngoài ra, Wi-Fi 7 còn hỗ trợ kết nối đồng thời nhiều thiết bị mà không làm giảm hiệu suất, rất phù hợp với các gia đình hoặc văn phòng sử dụng nhiều thiết bị thông minh.\n\nChip A18 và A18 Pro.\n\niPhone 16 Series được trang bị bộ vi xử lý mới nhất của Apple, gồm chip A18 trên iPhone 16 và 16 Plus, còn iPhone 16 Pro và 16 Pro Max sở hữu chip A18 Pro còn mạnh mẽ hơn. Cả hai con chip đều được sản xuất trên tiến trình 3nm thế hệ thứ hai, mang đến hiệu năng vượt trội so với thế hệ trước, cho phép xử lý mượt mà mọi tác vụ từ cơ bản đến phức tạp như chơi game đồ họa cao, chỉnh sửa video 4K, và trải nghiệm các tính năng thực tế tăng cường AR. Ngoài hiệu năng, A18 và A18 Pro còn được tối ưu hóa để tiết kiệm pin hơn, giúp kéo dài thời gian sử dụng cho thiết bị.\n\nCamera Ultra-wide 48MP.\n\niPhone 16 Pro và 16 Pro Max được nâng cấp đáng kể với camera Ultra-wide 48MP, cho phép bạn chụp được những bức ảnh góc rộng với độ chi tiết và độ phân giải cao hơn bao giờ hết. Cảm biến lớn hơn cũng giúp thu được nhiều ánh sáng hơn, cho ra những bức ảnh sáng hơn và ít nhiễu hơn, đặc biệt là trong điều kiện thiếu sáng.\n\nVới camera Ultra-wide 48MP, bạn có thể thỏa sức sáng tạo với những bức ảnh phong cảnh hoành tráng, kiến trúc ấn tượng và những khoảnh khắc đáng nhớ bên gia đình và bạn bè.\n\nThời lượng pin tốt hơn.\n\niPhone 16 series được Apple ưu ái trang bị viên pin dung lượng cao hơn và con chip tiết kiệm điện năng hơn, mang đến thời lượng pin tốt hơn so với thế hệ trước. Người dùng có thể thoải mái sử dụng iPhone cả ngày dài mà không lo gián đoạn, từ lướt web, xem phim đến chơi game hay làm việc với các ứng dụng nặng. Không còn cảm giác lo lắng về việc sạc pin thường xuyên, bạn có thể tập trung vào công việc và cuộc sống hàng ngày một cách thoải mái nhất.',
    'Trên đây là những thông tin về dòng iPhone 16 mới nhất. Hy vọng bài viết sẽ hữu ích với bạn. Cảm ơn đã quan tâm theo dõi, hẹn bạn đọc ở bài viết tiếp theo!',
    'assets/img/baiViet1.jpg',
    'assets/img/baiViet2.jpg'
);

INSERT INTO baiViet (tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2) VALUES 
('So sánh iPhone 16 và iPhone 15: Có gì khác biệt?', 
 'Nhiều người dùng đang thắc mắc về sự khác biệt giữa iPhone 16 và iPhone 15. Hãy cùng tìm hiểu trong bài viết này!', 
 'iPhone 16 sở hữu nhiều cải tiến về hiệu năng và camera so với iPhone 15. Trong khi đó, thiết kế cũng có sự thay đổi lớn với camera dọc. Tìm hiểu chi tiết hơn về từng tính năng.', 
 'Nếu bạn đang phân vân giữa hai dòng sản phẩm này, hãy cân nhắc nhu cầu sử dụng của mình.', 
  'assets/img/baiViet1.jpg',
	'assets/img/baiViet2.jpg'),

('iPhone 16: Đánh giá hiệu suất và thời lượng pin', 
 'Hiệu suất và thời lượng pin luôn là mối quan tâm hàng đầu của người dùng. Bài viết này sẽ đánh giá chi tiết về iPhone 16.', 
 'Với chip A18, iPhone 16 mang lại hiệu suất vượt trội. Thời gian sử dụng pin cũng được cải thiện đáng kể, giúp người dùng yên tâm hơn trong suốt cả ngày.', 
 'iPhone 16 không chỉ mạnh mẽ mà còn tiết kiệm năng lượng, là lựa chọn lý tưởng cho người dùng.', 
  'assets/img/baiViet1.jpg',
    'assets/img/baiViet2.jpg'),

('Các tính năng camera nổi bật trên iPhone 16', 
 'Camera là một trong những yếu tố quyết định mua sắm của người dùng. Hãy cùng khám phá các tính năng camera mới trên iPhone 16.', 
 'iPhone 16 Pro Max được trang bị camera Ultra-wide 48MP, giúp chụp ảnh chất lượng cao hơn. Tính năng quay video 3D cũng là điểm nhấn đáng chú ý.', 
 'Với những nâng cấp này, iPhone 16 chắc chắn sẽ đáp ứng tốt nhu cầu chụp ảnh của người dùng.', 
  'assets/img/baiViet1.jpg',
    'assets/img/baiViet2.jpg'),

('Tính năng Wi-Fi 7 trên iPhone 16: Tương lai của kết nối', 
 'iPhone 16 là một trong những sản phẩm đầu tiên hỗ trợ Wi-Fi 7. Bài viết này sẽ giải thích lý do tại sao điều này quan trọng.', 
 'Wi-Fi 7 mang lại tốc độ vượt trội và khả năng kết nối nhiều thiết bị cùng lúc mà không làm giảm hiệu suất. Điều này rất hữu ích trong thời đại Internet of Things.', 
 'Với Wi-Fi 7, iPhone 16 sẽ mang lại trải nghiệm trực tuyến mượt mà hơn bao giờ hết.', 
  'assets/img/baiViet1.jpg',
'assets/img/baiViet2.jpg'),

('Tổng quan về thiết kế iPhone 16: Cải tiến và đổi mới', 
 'Thiết kế là một yếu tố quan trọng trong việc lựa chọn smartphone. Bài viết này sẽ phân tích thiết kế mới của iPhone 16.', 
 'Thiết kế camera dọc và kích thước màn hình lớn hơn là những điểm nổi bật trên iPhone 16. Điều này không chỉ mang lại vẻ ngoài hiện đại mà còn cải thiện trải nghiệm người dùng.', 
 'iPhone 16 không chỉ đẹp mà còn rất tiện dụng, phù hợp với xu hướng hiện đại.', 
'assets/img/baiViet1.jpg',
'assets/img/baiViet2.jpg');
    
INSERT INTO baiViet (tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2)
VALUES (
    'Bạn biết gì về điện thoại Samsung? Tại sao người dùng lại yêu thích hãng đến thế?',
    'Hiện nay, thị trường điện thoại đang phát triển vô cùng mạnh với đa dạng thương hiệu mới ra đời. Nhưng, hãng điện thoại vô cùng nổi tiếng mình muốn giới thiệu đến các bạn hôm nay là Samsung - thương hiệu điện thoại lâu đời, cũng như nhận được sự tin tưởng của đông đảo người dùng công nghệ.',
    'Vậy điện thoại Samsung có tốt không? Đâu là những lý do bạn mua điện thoại Samsung?\n\nĐiện thoại Samsung có tốt không? Đâu là lý do nên mua điện thoại Samsung?\n\n**Độ nhận diện thương hiệu cao**\nLà một thương hiệu lâu đời và uy tín, thế nên Samsung là một cái tên được đa số người dùng biết đến. Có thể nói là thương hiệu có độ phủ sóng cực kỳ cao từ người trẻ tuổi đến cả những cô chú trung niên cũng đều biết đến Samsung.\nVà nhất là với người lớn tuổi, họ thường tin dùng Samsung hơn so với những thương hiệu khác bởi Samsung là nhãn hiệu đã có mặt tại thị trường Việt Nam từ rất sớm và cũng cho ra đời rất nhiều mẫu điện thoại nút bấm.\n\n**Sản phẩm được kiểm tra nghiêm ngặt và có chất lượng tốt**\nĐây cũng là lý do chính mà người dùng ưa chuộng điện thoại Samsung đến thế. Quy trình kiểm tra smartphone tại Samsung cực kỳ nghiêm ngặt. Bất kỳ chiếc điện thoại nào vừa ra lò đều được kiểm tra đầy đủ từ camera, loa đến nhiệt độ sản phẩm khi dùng trong thời gian dài và tất nhiên là cả độ bền cũng như chống va đập nữa.\nNgoài ra Samsung còn kiểm tra mức độ hoạt động của chiếc smartphone trong các điều kiện môi trường khác nhau để có thể đáp ứng tốt khách hàng đến từ khắp nơi trên thế giới.\n\n**Hỗ trợ cập nhật lâu dài**\nSamsung là thương hiệu smartphone Android hỗ trợ cập nhật phiên bản mới lên đến 4 năm, trong khoảng thời gian này bạn được cung cấp khá nhiều các bản vá lỗi bảo mật và nâng cấp, tất nhiên là cả nâng cấp Android nữa. Vì thế, bạn có thể yên tâm sử dụng smartphone Samsung về lâu dài.\n\nTrong khi đó các thương hiệu khác chỉ được hỗ trợ vá bảo mật khoảng 3 năm và nâng cấp Android khoảng 1 đến 2 năm.\n\n**Đa dạng phân khúc**\nCho dù túi tiền của bạn có hạn hẹp hay dư giả thì bạn cũng có thể sở hữu một chiếc smartphone đến từ Samsung cả. Để chiều lòng người dùng, Samsung đã cho ra mắt rất nhiều dòng điện thoại khác nhau và thuộc mọi phân khúc giá.\n\nVậy điện thoại Samsung có tốt không? Câu trả lời là có bạn nhé, chẳng những tốt mà smartphone Samsung còn cực kỳ đáng mua khi vừa bền vừa đẹp lại còn được hỗ trợ update về sau nữa.',
    'Vậy điện thoại Samsung có tốt không? Câu trả lời là có bạn nhé, chẳng những tốt mà smartphone Samsung còn cực kỳ đáng mua khi vừa bền vừa đẹp lại còn được hỗ trợ update về sau nữa.',
    'image1.jpg',
    'image2.jpg'
);

