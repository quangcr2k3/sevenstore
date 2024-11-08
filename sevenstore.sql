-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2024 lúc 05:19 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sevenstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `ma_kh` varchar(50) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_bl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `ma_kh`, `ma_hh`, `noi_dung`, `ngay_bl`) VALUES
(6, 'admin', 139, 'Mn ủng hộ SEVEN STORE với nha!', '06-11-2023'),
(9, 'QuangCr', 104, 'Đôi này đá thích lắm mới mua hôm trước xong', '07-11-2023'),
(10, 'QuangCr', 110, 'Đôi này đẹp quá shop ơi 😍', '07-11-2023'),
(11, 'QuangCr', 140, 'Có giảm nữa ko shop? 😢', '07-11-2023'),
(12, 'QuangCr', 110, 'Đẹp không ạ', '18-12-2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(100) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) NOT NULL,
  `mo_ta` varchar(1000) NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `hinh`, `don_gia`, `giam_gia`, `mo_ta`, `ma_loai`) VALUES
(100, 'Nike Mercurial Vapor 14 Academy Xanh Ngọc TF', 'nike (16).png', 380000, 10, 'Nike Mercurial Vapor 14 Academy Xanh Ngọc TF là một đôi giày bóng đá hiệu suất cao được thiết kế đặc biệt cho sân cỏ nhân tạo (TF). Chúng có màu xanh ngọc bắt mắt, tạo sự nổi bật trên sân. Đôi giày này thuộc dòng Mercurial của Nike, nổi tiếng với thiết kế nhẹ nhàng và giúp tăng tốc độ và kiểm soát bóng. Đặc điểm nổi bật bao gồm đế ngoài với gai mảnh và chất liệu tổng hợp chất lượng, mang lại cảm giác thoải mái và ổn định cho người mang.', 10),
(101, 'Nike Mercurial Vapor 14 Academy Xanh Biển TF', 'nike (14).png', 380000, 10, 'Nike Mercurial Vapor 14 Academy Xanh Biển TF là một đôi giày bóng đá chất lượng của Nike, thiết kế đặc biệt cho sân cỏ nhân tạo (TF). Màu xanh biển tươi sáng và thiết kế mạng đan ở phần trên giày tạo sự thoải mái và thoáng khí cho đôi chân của người mang. Đế giày được thiết kế với nút đinh dày và tiêu biểu giúp cải thiện vận tốc và độ bám trên sân cỏ nhân tạo. Đây là một lựa chọn phổ biến cho các cầu thủ yêu thích tốc độ và hiệu suất trong màu sắc nổi bật.', 10),
(102, 'Nike Mercurial Vapor 14 Academy Xám TF', 'nike (15).png', 380000, 10, 'Nike Mercurial Vapor 14 Academy Xám TF là đôi giày bóng đá lý tưởng cho sân cỏ nhân tạo (TF). Với thiết kế màu xám thanh lịch và đế nút đinh đảm bảo độ bám tốt, giày này kết hợp giữa hiệu suất và phong cách, đáp ứng nhu cầu của các cầu thủ yêu thích sự ổn định và đẳng cấp trên sân cỏ.', 10),
(103, 'Nike Mercurial Vapor 14 Academy Đỏ TF', 'nike (17).png', 380000, 10, 'Nike Mercurial Vapor 14 Academy Đỏ TF là một đôi giày bóng đá đầy năng động, thiết kế cho sân cỏ nhân tạo (TF). Màu sắc đỏ tươi sáng và đế giày với nút đinh đảm bảo độ bám và ổn định trên sân, là lựa chọn hoàn hảo cho những cầu thủ ưa thích sự nổi bật và hiệu suất cao.', 10),
(104, 'Nike Phantom GX Elite Xám Gót Xanh Ngọc Cổ Lửng FG', 'nike (18).png', 820000, 20, 'Nike Phantom GX Elite Xám Gót Xanh Ngọc Cổ Lửng FG là một đôi giày bóng đá cao cấp với thiết kế thời trang. Màu xám tối kết hợp với gót xanh ngọc cổ lửng tạo điểm nhấn. Đế FG chất lượng cao giúp cầu thủ có sự bám và kiểm soát tốt trên sân cỏ tự nhiên, là lựa chọn tuyệt vời cho những người yêu thích hiệu suất và phong cách trên sân.', 10),
(105, 'Nike Mercurial Vapor 15 Elite Vàng Cream Vạch Đen Cổ Lửng TF', 'nike (19).png', 730000, 20, 'Nike Mercurial Vapor 15 Elite Vàng Cream Vạch Đen Cổ Lửng TF là một đôi giày bóng đá tuyệt vời với thiết kế tinh tế. Đôi giày được làm từ chất liệu cao cấp, mang lại cảm giác thoải mái và ôm sát chân. Màu vàng cream và vạch đen tạo nên sự tinh tế và sang trọng. Đặc biệt, đế chất liệu cao su được thiết kế đặc biệt để tăng cường độ bám và linh hoạt trên sân cỏ nhân tạo (TF). Đây là lựa chọn hoàn hảo cho các cầu thủ chuyên nghiệp với sự kết hợp hoàn hảo giữa phong cách và hiệu suất.', 10),
(106, 'Nike Mercurial Superfly 9 Elite Vàng Cream Vạch Đen Cổ Cao TF', 'nike (20).png', 730000, 20, 'Giày Bóng Đá Nike Mercurial Superfly 9 Elite Vàng Cream Vạch Đen Cổ Cao TF là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất xuất sắc trong sân cỏ nhân-made. Với màu sắc tinh tế và chất liệu cao cấp, đây là một sự lựa chọn ưu việt cho những cầu thủ đang tìm kiếm sự ấn tượng trên sân bóng.', 10),
(107, 'Nike Mercurial Superfly 9 Academy Xám Đế Xanh Lá Cổ Cao TF', 'nike (1).png', 490000, 10, 'Nike Mercurial Superfly 9 Academy Xám Đế Xanh Lá Cổ Cao TF là một đôi giày bóng đá đỉnh cao thiết kế cho sự tối ưu hóa hiệu suất trên sân cỏ nhân tạo. Với thiết kế mạnh mẽ, chúng mang đến sự đẳng cấp và tốc độ cho các cầu thủ bóng đá. Màu sắc xám ấn tượng kết hợp với đế xanh lá tạo nên sự nổi bật, trong khi lớp cổ cao giúp bảo vệ mắt cá chân và tăng cường ổn định. Nike Mercurial Superfly 9 Academy là sự kết hợp hoàn hảo giữa vẻ đẹp và chất lượng.', 10),
(108, 'Nike Mercurial Superfly 9 Academy Vàng Cream Cổ Cao TF', 'nike (2).png', 490000, 10, 'Nike Mercurial Superfly 9 Academy Vàng Cream Cổ Cao TF là một đôi giày bóng đá đẹp và tối ưu cho cầu thủ trên sân cỏ nhân tạo. Màu vàng cream nổi bật cùng thiết kế cổ cao giúp tạo đẳng cấp và tốc độ trong mỗi bước chạy và dứt điểm. Đế TF đảm bảo bám sân tốt, biến chúng thành một lựa chọn tuyệt vời cho các trận đấu sôi động.', 10),
(109, 'Nike Mercurial Vapor 15 Academy Vàng Cream TF', 'nike (3).png', 380000, 10, 'Nike Mercurial Vapor 15 Academy Vàng Cream TF là một đôi giày bóng đá ấn tượng với thiết kế màu vàng cream sáng bóng. Với đế TF, chúng phù hợp cho cỏ nhân tạo, đảm bảo độ bám tốt trên sân. Đây là sự kết hợp hoàn hảo giữa phong cách và hiệu suất cho những cầu thủ yêu thích sự độc đáo và sự ổn định trong trận đấu.', 10),
(110, 'Adidas Predator Freak+ EQT Trắng Xanh Lá Vạch Đen Không Dây Cổ Cao TF', 'adidas (1).png', 860000, 10, 'Adidas Predator Freak+ EQT Trắng Xanh Lá Vạch Đen là một đôi giày bóng đá đẹp và đầy cá tính. Với thiết kế không dây, chúng mang lại sự thoải mái và sự kín đáo cho cầu thủ. Đế TF giúp bám sân tốt trên cỏ nhân tạo. Sự kết hợp của màu trắng, xanh lá và vạch đen tạo nên một phong cách hiện đại và thu hút trên sân cỏ. Đây là lựa chọn hoàn hảo cho những người yêu thích sự ấn tượng và hiệu suất trong trận đấu.', 11),
(111, 'Adidas Predator Edge+ Cam Xanh Chuối Cổ Cao Không Dây TF', 'adidas (2).png', 800000, 15, 'Giày bóng đá của Adidas luôn nổi tiếng với sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất tốt. Chúng thường có các công nghệ tiên tiến để tăng cường tốc độ, kiểm soát bóng và bám sân, giúp cầu thủ tự tin trong mỗi trận đấu. Adidas cũng thường có nhiều biến thể về kiểu dáng và màu sắc, từ phong cách cổ điển đến các thiết kế hiện đại và cá tính, phù hợp với mọi người chơi và sở thích. Sự đa dạng và chất lượng của giày bóng đá Adidas đã làm hài lòng rất nhiều cầu thủ và người hâm mộ.', 11),
(112, 'Adidas X Speedportal+ L10NEL M35SI Cam Đen Không Dây FG', 'adidas (3).png', 750000, 15, 'Giày bóng đá của Adidas luôn nổi tiếng với sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất tốt. Chúng thường có các công nghệ tiên tiến để tăng cường tốc độ, kiểm soát bóng và bám sân, giúp cầu thủ tự tin trong mỗi trận đấu. Adidas cũng thường có nhiều biến thể về kiểu dáng và màu sắc, từ phong cách cổ điển đến các thiết kế hiện đại và cá tính, phù hợp với mọi người chơi và sở thích. Sự đa dạng và chất lượng của giày bóng đá Adidas đã làm hài lòng rất nhiều cầu thủ và người hâm mộ.', 11),
(113, 'Adidas X Speedportal.1 Trắng Hồng Vạch Đen TF', 'adidas (4).png', 540000, 12, 'Giày bóng đá của Adidas luôn nổi tiếng với sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất tốt. Chúng thường có các công nghệ tiên tiến để tăng cường tốc độ, kiểm soát bóng và bám sân, giúp cầu thủ tự tin trong mỗi trận đấu. Adidas cũng thường có nhiều biến thể về kiểu dáng và màu sắc, từ phong cách cổ điển đến các thiết kế hiện đại và cá tính, phù hợp với mọi người chơi và sở thích. Sự đa dạng và chất lượng của giày bóng đá Adidas đã làm hài lòng rất nhiều cầu thủ và người hâm mộ.', 11),
(114, 'Adidas X Speedportal.1 Hồng Đen TF', 'adidas (5).png', 540000, 12, 'Giày bóng đá của Adidas luôn nổi tiếng với sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất tốt. Chúng thường có các công nghệ tiên tiến để tăng cường tốc độ, kiểm soát bóng và bám sân, giúp cầu thủ tự tin trong mỗi trận đấu. Adidas cũng thường có nhiều biến thể về kiểu dáng và màu sắc, từ phong cách cổ điển đến các thiết kế hiện đại và cá tính, phù hợp với mọi người chơi và sở thích. Sự đa dạng và chất lượng của giày bóng đá Adidas đã làm hài lòng rất nhiều cầu thủ và người hâm mộ.', 11),
(115, 'Adidas Predator Accuracy.3 Đen Đế Hồng TF', 'adidas (6).png', 630000, 12, 'Giày bóng đá của Adidas luôn nổi tiếng với sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất tốt. Chúng thường có các công nghệ tiên tiến để tăng cường tốc độ, kiểm soát bóng và bám sân, giúp cầu thủ tự tin trong mỗi trận đấu. Adidas cũng thường có nhiều biến thể về kiểu dáng và màu sắc, từ phong cách cổ điển đến các thiết kế hiện đại và cá tính, phù hợp với mọi người chơi và sở thích. Sự đa dạng và chất lượng của giày bóng đá Adidas đã làm hài lòng rất nhiều cầu thủ và người hâm mộ.', 11),
(116, 'Puma Future Ultimate Tím Cổ Lửng TF', 'puma (1).png', 730000, 15, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(117, 'Puma Future Ultimate Trắng Hồng Cổ Lửng TF', 'puma (2).png', 730000, 15, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(118, 'Puma Future Ultimate Pursuit Xanh Chuối MG', 'puma (3).png', 680000, 13, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(119, 'Puma King Ultimate Trắng Vạch Xanh Chuối FG', 'puma (4).png', 680000, 12, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(120, 'Puma Future Play TT Tokyo Trắng Đen TF', 'puma (5).png', 380000, 10, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(121, 'Puma Future Play TT Creativity Trắng Tím TF', 'puma (6).png', 380000, 10, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(122, 'Puma Future Ultimate Trắng Hồng Cổ Lửng FG', 'puma (7).png', 750000, 12, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(123, 'Puma Future Ultimate Trắng Xám', 'puma (8).png', 740000, 12, 'Giày bóng đá của PUMA thường được thiết kế với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Chúng có kiểu dáng thời trang, với màu sắc và họa tiết đa dạng để thu hút mọi người. Đặc tính kỹ thuật của giày PUMA bao gồm đế độn cao cấp, vật liệu đế giày bám sân tốt, và tính linh hoạt giúp cải thiện khả năng điều khiển bóng và tốc độ trên sân cỏ. Đây là sự lựa chọn tuyệt vời cho những người yêu thể thao và bóng đá.', 12),
(124, 'Wika 3 Sọc Toni Kroos Trắng Gót Vàng', 'wika (1).png', 190000, 0, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(125, 'Wika 3 Sọc Toni Kroos Trắng Gót Bạc', 'wika (2).png', 190000, 0, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(126, 'Wika 3 Sọc Toni Kroos Trắng Gót Hồng', 'wika (3).png', 190000, 0, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(127, 'Wika Rapid Navy TF', 'wika (4).png', 340000, 17, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(128, 'Wika Rapid Trắng Xám TF', 'wika (5).png', 340000, 17, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(129, 'Wika Rapid Trắng Xanh TF', 'wika (6).png', 340000, 14, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(130, 'Wika Rapid Xanh Chuối TF', 'wika (7).png', 340000, 14, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(131, 'Wika Rapid Xanh Ngọc TF', 'wika (8).png', 340000, 14, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(132, 'Wika DragonX Tricks Hai Màu Hồng Xanh', 'wika (9).png', 440000, 5, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(133, 'Wika VH5 Cam Cổ Lửng', 'wika (10).png', 600000, 5, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(134, 'Wika VH5 Tím Cổ Lửng', 'wika (11).png', 600000, 5, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(135, 'Wika DragonX Đồng', 'wika (12).png', 440000, 5, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(136, 'Wika DragonX Cam', 'wika (13).png', 440000, 5, 'Giày bóng đá của WIKA là sự kết hợp hoàn hảo giữa thiết kế thời trang và hiệu suất vượt trội. Với chất liệu chất lượng cao, đế đinh và cấu trúc siêu nhẹ, chúng mang lại độ ổn định, độ bám và sự thoải mái cho cầu thủ trên sân cỏ. WIKA luôn tạo ra những sản phẩm đáng tin cậy để giúp bạn tỏa sáng trên sân bóng.', 13),
(137, 'Kamito Velocidad Đỏ IC', 'kamito (1).png', 599000, 0, 'Giày bóng đá của KAMITO đẳng cấp và hiệu suất cao. Thiết kế sang trọng, chất liệu chất lượng, và đế đinh cải tiến giúp cầu thủ có sự kiểm soát tốt và tốc độ ấn tượng trên sân cỏ. Sản phẩm này thể hiện sự đột phá và đẳng cấp trong thế giới giày bóng đá.', 14),
(138, 'Kamito Velocidad Xanh Ngọc IC', 'kamito (2).png', 599000, 0, 'Giày bóng đá của KAMITO đẳng cấp và hiệu suất cao. Thiết kế sang trọng, chất liệu chất lượng, và đế đinh cải tiến giúp cầu thủ có sự kiểm soát tốt và tốc độ ấn tượng trên sân cỏ. Sản phẩm này thể hiện sự đột phá và đẳng cấp trong thế giới giày bóng đá.', 14),
(139, 'Kamito TA11 Pro Vàng Trắng Lưỡi Gà Liền IC', 'kamito (3).png', 899000, 0, 'Giày bóng đá của KAMITO đẳng cấp và hiệu suất cao. Thiết kế sang trọng, chất liệu chất lượng, và đế đinh cải tiến giúp cầu thủ có sự kiểm soát tốt và tốc độ ấn tượng trên sân cỏ. Sản phẩm này thể hiện sự đột phá và đẳng cấp trong thế giới giày bóng đá.', 14),
(140, 'Kamito TA11 Đỏ Hồng Xanh Ngọc IC', 'kamito (4).png', 790000, 0, 'Giày bóng đá của KAMITO đẳng cấp và hiệu suất cao. Thiết kế sang trọng, chất liệu chất lượng, và đế đinh cải tiến giúp cầu thủ có sự kiểm soát tốt và tốc độ ấn tượng trên sân cỏ. Sản phẩm này thể hiện sự đột phá và đẳng cấp trong thế giới giày bóng đá.', 14),
(141, 'Kamito Velocidad Cam Đen IC', 'kamito (5).png', 599000, 0, 'Giày bóng đá của KAMITO đẳng cấp và hiệu suất cao. Thiết kế sang trọng, chất liệu chất lượng, và đế đinh cải tiến giúp cầu thủ có sự kiểm soát tốt và tốc độ ấn tượng trên sân cỏ. Sản phẩm này thể hiện sự đột phá và đẳng cấp trong thế giới giày bóng đá.', 14),
(142, 'Mizuno Monarcida Xanh Ngọc Nhạt TF', 'mizuno (1).png', 400000, 5, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(143, 'Mizuno Monarcida Hồng Vạch Trắng TF', 'mizuno (2).png', 400000, 5, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(144, 'Mizuno Monarcida Vàng Đen TF', 'mizuno (3).png', 400000, 5, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(145, 'Mizuno Neo 4 Elite Đen Vàng Lưỡi Gà Liền FG', 'mizuno (4).png', 680000, 7, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(146, 'Mizuno Neo 4 Elite Đỏ Vàng Lưỡi Gà Liền FG', 'mizuno (5).png', 680000, 7, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(147, 'Mizuno Neo 3 Elite Cam Lưỡi Gà Liền FG', 'mizuno (6).png', 600000, 10, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(148, 'Mizuno Alpha Elite AS Trắng Xám TF', 'mizuno (7).png', 550000, 0, 'Giày bóng đá của MIZUNO được biết đến với thiết kế chất lượng và hiệu suất cao. Chúng được sản xuất bằng các công nghệ tiên tiến để cung cấp sự thoải mái và hỗ trợ tối ưu cho cầu thủ. Sản phẩm này thường được ưa chuộng bởi những người yêu thể thao và chuyên nghiệp trong làng bóng đá.', 15),
(149, 'Zocker Inspire PRO Xanh Olive', 'zocker (1).png', 729000, 5, 'Giày bóng đá của hãng ZOCKER là sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Với tông màu sắc tươi sáng và thiết kế thể thao, chiếc giày này không chỉ gây ấn tượng mạnh mà còn đảm bảo sự thoải mái và chắc chắn cho người mang. Chất liệu chất lượng cao và công nghệ tiên tiến giúp cung cấp độ bền và độ bám tốt trên sân cỏ, giúp cầu thủ thể hiện tối đa khả năng của mình khi thi đấu.', 16),
(150, 'Zocker Inspire PRO Hồng Chuối', 'zocker (2).png', 729000, 5, 'Giày bóng đá của hãng ZOCKER là sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Với tông màu sắc tươi sáng và thiết kế thể thao, chiếc giày này không chỉ gây ấn tượng mạnh mà còn đảm bảo sự thoải mái và chắc chắn cho người mang. Chất liệu chất lượng cao và công nghệ tiên tiến giúp cung cấp độ bền và độ bám tốt trên sân cỏ, giúp cầu thủ thể hiện tối đa khả năng của mình khi thi đấu.', 16),
(151, 'Zocker Inspire PRO Xanh Lơ', 'zocker (3).png', 729000, 5, 'Giày bóng đá của hãng ZOCKER là sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Với tông màu sắc tươi sáng và thiết kế thể thao, chiếc giày này không chỉ gây ấn tượng mạnh mà còn đảm bảo sự thoải mái và chắc chắn cho người mang. Chất liệu chất lượng cao và công nghệ tiên tiến giúp cung cấp độ bền và độ bám tốt trên sân cỏ, giúp cầu thủ thể hiện tối đa khả năng của mình khi thi đấu.', 16),
(152, 'Zocker Inspire PRO Đen Hồng', 'zocker (4).png', 729000, 5, 'Giày bóng đá của hãng ZOCKER là sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Với tông màu sắc tươi sáng và thiết kế thể thao, chiếc giày này không chỉ gây ấn tượng mạnh mà còn đảm bảo sự thoải mái và chắc chắn cho người mang. Chất liệu chất lượng cao và công nghệ tiên tiến giúp cung cấp độ bền và độ bám tốt trên sân cỏ, giúp cầu thủ thể hiện tối đa khả năng của mình khi thi đấu.', 16),
(153, 'Bata Tàu Warrior WK74 Đế Đen', 'bata (1).png', 140000, 0, 'Bata cung cấp các đôi giày thể thao dành riêng cho việc đá bóng, với thiết kế chất lượng và tính năng hỗ trợ cho cầu thủ. Được sản xuất với vật liệu bền bỉ và đế cao su, giày Bata cho bóng đá đáp ứng tốt nhu cầu của người chơi với sự thoải mái và kiểm soát tốt trên sân cỏ.', 17),
(154, 'Bata Mickey Trắng', 'bata (2).png', 150000, 0, 'Bata cung cấp các đôi giày thể thao dành riêng cho việc đá bóng, với thiết kế chất lượng và tính năng hỗ trợ cho cầu thủ. Được sản xuất với vật liệu bền bỉ và đế cao su, giày Bata cho bóng đá đáp ứng tốt nhu cầu của người chơi với sự thoải mái và kiểm soát tốt trên sân cỏ.', 17),
(155, 'Bata Chính Hãng Warrior Siêu Phủi Xanh Than Viền Vàng', 'bata (3).png', 270000, 5, 'Bata cung cấp các đôi giày thể thao dành riêng cho việc đá bóng, với thiết kế chất lượng và tính năng hỗ trợ cho cầu thủ. Được sản xuất với vật liệu bền bỉ và đế cao su, giày Bata cho bóng đá đáp ứng tốt nhu cầu của người chơi với sự thoải mái và kiểm soát tốt trên sân cỏ.', 17),
(156, 'Bata Chính Hãng Warrior Siêu Phủi Trắng Viền Bạc', 'bata (4).png', 270000, 5, 'Bata cung cấp các đôi giày thể thao dành riêng cho việc đá bóng, với thiết kế chất lượng và tính năng hỗ trợ cho cầu thủ. Được sản xuất với vật liệu bền bỉ và đế cao su, giày Bata cho bóng đá đáp ứng tốt nhu cầu của người chơi với sự thoải mái và kiểm soát tốt trên sân cỏ.', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hd` int(11) NOT NULL,
  `ngay_mua` varchar(20) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `ghi_chu` varchar(100) NOT NULL,
  `tinh_trang` varchar(20) NOT NULL DEFAULT '0',
  `ma_kh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hd`, `ngay_mua`, `dia_chi`, `ghi_chu`, `tinh_trang`, `ma_kh`) VALUES
(1000, '06-11-2023', 'Tổ 3C, Khu Hàm Nghi, Gia Cẩm, Việt Trì, Phú Thọ', '', '1', 'admin'),
(1001, '06-11-2023', 'Gia Lâm - Hà Nội', '', '1', 'admin'),
(1002, '06-11-2023', '41A, Phú Diễn - Bắc Từ Liêm - Hà Nội', '', '1', 'admin'),
(1003, '07-11-2023', 'Tổ 3C, Khu Hàm Nghi, Gia Cẩm, Việt Trì, Phú Thọ', 'Giao trước ngày 15/11 giúp em', '1', 'QuangCr'),
(1004, '07-11-2023', 'Hoài Đức-HN', 'giao em buổi sáng nhé', '1', 'TanTan'),
(1005, '07-11-2023', '41A, Phú Diễn - Bắc Từ Liêm - Hà Nội', '', '1', 'admin'),
(1006, '07-11-2023', '205/1, Phú Diễn, BTL', '', '1', 'QuangCr'),
(1007, '07-11-2023', 'Số 7, Ngõ 100/193, Phú Diễn', '', '1', 'QuangCr'),
(1008, '07-11-2023', 'Số 7, Ngõ 100/193, Phú Diễn', '', '1', 'QuangCr'),
(1009, '07-11-2023', 'Số 7, Ngõ 100/193, Phú Diễn', '', '1', 'QuangCr'),
(1010, '22-11-2023', 'Tỉnh Hà Nam, thành phố Phủ Lý', '', '1', 'admin'),
(1011, '08-12-2023', 'Tổ 3C, Khu Hàm Nghi, Gia Cẩm, Việt Trì, Phú Thọ', '', '1', 'QuangCr'),
(1012, '13-12-2023', '41A, Phú Diễn - Bắc Từ Liêm - Hà Nội', '', '1', 'admin'),
(1013, '18-12-2023', 'Cổng trường ĐH Tài Nguyên & Môi Trường HN', '', '1', 'QuangCr'),
(1014, '19-12-2023', '41A, Phú Diễn - Bắc Từ Liêm - Hà Nội', '', '0', 'admin'),
(1015, '19-12-2023', '41A, Phú Diễn - Bắc Từ Liêm - Hà Nội', 'Giao e buổi sáng ngày 20/12 nhé shop. E cảm ơn', '0', 'admin'),
(1016, '19-12-2023', 'Số 7, Ngõ 100/193, Phú Diễn', '', '0', 'admin'),
(1017, '19-12-2023', 'Tổ 3C, Khu Hàm Nghi, Gia Cẩm, Việt Trì, Phú Thọ', '', '0', 'admin'),
(1018, '19-12-2023', 'Trường ĐH TN & MT HN', '', '0', 'admin'),
(1019, '19-12-2023', 'Bảo tàng Hùng Vương, Gia Cẩm, Việt Trì, Phú Thọ', '', '0', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `ma_hd` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `ma_hh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`ma_hd`, `size`, `so_luong`, `don_gia`, `ma_hh`) VALUES
(1000, 39, 2, 899000, 139),
(1001, 45, 2, 899000, 139),
(1002, 44, 1, 899000, 139),
(1003, 41, 1, 860000, 110),
(1003, 39, 1, 740000, 123),
(1004, 39, 1, 750000, 122),
(1005, 39, 2, 750000, 122),
(1006, 42, 1, 729000, 150),
(1006, 45, 1, 599000, 138),
(1007, 45, 1, 750000, 112),
(1007, 43, 1, 270000, 155),
(1008, 44, 1, 380000, 120),
(1009, 39, 2, 380000, 120),
(1009, 42, 1, 820000, 104),
(1010, 39, 1, 740000, 123),
(1011, 39, 2, 860000, 110),
(1012, 43, 1, 899000, 139),
(1012, 45, 1, 860000, 110),
(1013, 43, 2, 860000, 110),
(1014, 44, 2, 140000, 153),
(1014, 44, 3, 729000, 150),
(1014, 39, 1, 600000, 147),
(1015, 39, 1, 729000, 151),
(1016, 43, 1, 729000, 151),
(1016, 42, 1, 270000, 156),
(1017, 45, 1, 729000, 151),
(1017, 44, 1, 270000, 156),
(1018, 41, 1, 899000, 139),
(1018, 41, 1, 860000, 110),
(1018, 45, 2, 820000, 104),
(1019, 39, 1, 800000, 111),
(1019, 42, 3, 730000, 116),
(1019, 39, 4, 190000, 124);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(50) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `vai_tro` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_ten`, `mat_khau`, `email`, `sdt`, `vai_tro`) VALUES
('admin', 'Seven Store', 'sevenstore', 'sevenstore@gmail.com', '0383518117', 1),
('Doanne', 'Nguyễn Hữu Đoàn', '12345', 'huudoan@gmail.com', '0385784695', 0),
('huy99xinchaoae', 'Nguyễn Đăng Huy', 'huy99', 'huybacninh@gmail.com', '0967488012', 0),
('QuangCr', 'Trần Việt Quang', '21/02/2003', 'tranvietquang2122003@gmail.com', '0383518117', 0),
('TanTan', 'Đỗ Danh Tân', 'tandan123', 'dodanhtan@gmail.com', '0394974367', 0),
('thanhle', 'Lê Quang Thành', 'th@nh123', 'thanhle@gmail.com', '0375255497', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hang`
--

CREATE TABLE `loai_hang` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hang`
--

INSERT INTO `loai_hang` (`ma_loai`, `ten_loai`) VALUES
(10, 'NIKE'),
(11, 'ADIDAS'),
(12, 'PUMA'),
(13, 'WIKA'),
(14, 'KAMITO'),
(15, 'MIZUNO'),
(16, 'ZOCKER'),
(17, 'BATA');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_hd` (`ma_hd`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_hang` (`ma_loai`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_2` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_3` FOREIGN KEY (`ma_hd`) REFERENCES `hoa_don` (`ma_hd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
