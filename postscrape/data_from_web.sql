-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 05:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_from_web`
--

CREATE TABLE `data_from_web` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ratting` varchar(255) NOT NULL,
  `prices` varchar(255) NOT NULL,
  `Amenities` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_from_web`
--

INSERT INTO `data_from_web` (`name`, `location`, `ratting`, `prices`, `Amenities`, `images`) VALUES
('The Park Hyderabad', 'Somajiguda', '5.9 Okay', '₹ 67+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/03/ae/24/ice-233787598-70639058_3XL-345367.jpg?width=335&height=268&crop=true'),
('Taj Falaknuma Palace', 'N/A', '9.5 Excellent', '₹ 661+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/a7/cb/c3/leonardo-1200539-Ladies_Room_O-406516.jpg?width=335&height=268&crop=true'),
('Radisson Blu Plaza Hotel Hyderabad Banjara Hills', 'Banjara Hills', '8.1 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Vivanta Hyderabad, Begumpet', 'Begumpet', '8.4 Excellent', '₹ 87+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Taj Deccan', 'Banjara Hills', '8.5 Excellent', '₹ 92+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Novotel Hyderabad Airport', 'N/A', '7.3 Good', '₹ 102+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Sheraton Hyderabad Hotel', 'N/A', '8.8 Excellent', '₹ 128+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('ITC Kakatiya, a Luxury Collection Hotel, Hyderabad', 'Begumpet', '7.9 Good', '₹ 125+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Banjara', 'Banjara Hills', '7.7 Good', '₹ 64+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Westin Hyderabad Mindspace', 'Madhapur', '8.5 Excellent', '₹ 147+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Krishna', 'Banjara Hills', '8.2 Excellent', '₹ 120+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Lemon Tree Premier, Hitec City, Hyderabad', 'HITEC City', '7.5 Good', '₹ 93+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Oakwood Residence Kapil Hyderabad', 'N/A', '8.7 Excellent', '₹ 78+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Golkonda Hyderabad', 'N/A', '7.2 Good', '₹ 60+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Radisson Hyderabad Hitec City', 'Gachibowli', '6.9 Good', '₹ 108+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Hyatt Hyderabad Gachibowli', 'N/A', '7.8 Good', '₹ 128+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Park Hyatt Hyderabad', 'Jubilee Hills', '8 Excellent', '₹ 129+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/6b/ac/80/ice-49839-63963623_3XL-093595.jpg?width=335&height=268&crop=true'),
('Trident Hyderabad', 'HITEC City', '9.2 Excellent', '₹ 150+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/77/09/84/leonardo-1272069-010-Trident_Hyderabad-Amara_O-247227.jpg?width=335&height=268&crop=true'),
('Novotel Hyderabad Convention Centre', 'N/A', '7.8 Good', '₹ 100+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Itc Kohenur, A Luxury Collection Hotel, Hyderabad', 'Madhapur', '8.2 Excellent', '₹ 157+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('The Park Hyderabad', 'Somajiguda', '5.9 Okay', '₹ 67+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/03/ae/24/ice-233787598-70639058_3XL-345367.jpg?width=335&height=268&crop=true'),
('Taj Falaknuma Palace', 'N/A', '9.5 Excellent', '₹ 661+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/a7/cb/c3/leonardo-1200539-Ladies_Room_O-406516.jpg?width=335&height=268&crop=true'),
('Radisson Blu Plaza Hotel Hyderabad Banjara Hills', 'Banjara Hills', '8.1 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Vivanta Hyderabad, Begumpet', 'Begumpet', '8.4 Excellent', '₹ 87+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Taj Deccan', 'Banjara Hills', '8.5 Excellent', '₹ 92+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Novotel Hyderabad Airport', 'N/A', '7.3 Good', '₹ 102+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Sheraton Hyderabad Hotel', 'N/A', '8.8 Excellent', '₹ 128+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('ITC Kakatiya, a Luxury Collection Hotel, Hyderabad', 'Begumpet', '7.9 Good', '₹ 125+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Banjara', 'Banjara Hills', '7.7 Good', '₹ 64+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Westin Hyderabad Mindspace', 'Madhapur', '8.5 Excellent', '₹ 147+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Krishna', 'Banjara Hills', '8.2 Excellent', '₹ 120+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Lemon Tree Premier, Hitec City, Hyderabad', 'HITEC City', '7.5 Good', '₹ 93+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Oakwood Residence Kapil Hyderabad', 'N/A', '8.7 Excellent', '₹ 78+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Golkonda Hyderabad', 'N/A', '7.2 Good', '₹ 60+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Radisson Hyderabad Hitec City', 'Gachibowli', '6.9 Good', '₹ 108+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Hyatt Hyderabad Gachibowli', 'N/A', '7.8 Good', '₹ 128+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Park Hyatt Hyderabad', 'Jubilee Hills', '8 Excellent', '₹ 129+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/6b/ac/80/ice-49839-63963623_3XL-093595.jpg?width=335&height=268&crop=true'),
('Trident Hyderabad', 'HITEC City', '9.2 Excellent', '₹ 150+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/77/09/84/leonardo-1272069-010-Trident_Hyderabad-Amara_O-247227.jpg?width=335&height=268&crop=true'),
('Novotel Hyderabad Convention Centre', 'N/A', '7.8 Good', '₹ 100+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Itc Kohenur, A Luxury Collection Hotel, Hyderabad', 'Madhapur', '8.2 Excellent', '₹ 157+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('The Park Hyderabad', 'Somajiguda', '5.9 Okay', '₹ 67+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/03/ae/24/ice-233787598-70639058_3XL-345367.jpg?width=335&height=268&crop=true'),
('Taj Falaknuma Palace', 'N/A', '9.5 Excellent', '₹ 661+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/a7/cb/c3/leonardo-1200539-Ladies_Room_O-406516.jpg?width=335&height=268&crop=true'),
('Radisson Blu Plaza Hotel Hyderabad Banjara Hills', 'Banjara Hills', '8.1 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Vivanta Hyderabad, Begumpet', 'Begumpet', '8.4 Excellent', '₹ 87+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Taj Deccan', 'Banjara Hills', '8.5 Excellent', '₹ 92+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Novotel Hyderabad Airport', 'N/A', '7.3 Good', '₹ 102+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Sheraton Hyderabad Hotel', 'N/A', '8.8 Excellent', '₹ 128+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('ITC Kakatiya, a Luxury Collection Hotel, Hyderabad', 'Begumpet', '7.9 Good', '₹ 125+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Banjara', 'Banjara Hills', '7.7 Good', '₹ 64+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Westin Hyderabad Mindspace', 'Madhapur', '8.5 Excellent', '₹ 147+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Krishna', 'Banjara Hills', '8.2 Excellent', '₹ 120+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Lemon Tree Premier, Hitec City, Hyderabad', 'HITEC City', '7.5 Good', '₹ 93+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Oakwood Residence Kapil Hyderabad', 'N/A', '8.7 Excellent', '₹ 78+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Golkonda Hyderabad', 'N/A', '7.2 Good', '₹ 60+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Radisson Hyderabad Hitec City', 'Gachibowli', '6.9 Good', '₹ 108+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Hyatt Hyderabad Gachibowli', 'N/A', '7.8 Good', '₹ 128+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Park Hyatt Hyderabad', 'Jubilee Hills', '8 Excellent', '₹ 129+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/6b/ac/80/ice-49839-63963623_3XL-093595.jpg?width=335&height=268&crop=true'),
('Trident Hyderabad', 'HITEC City', '9.2 Excellent', '₹ 150+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/77/09/84/leonardo-1272069-010-Trident_Hyderabad-Amara_O-247227.jpg?width=335&height=268&crop=true'),
('Novotel Hyderabad Convention Centre', 'N/A', '7.8 Good', '₹ 100+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Itc Kohenur, A Luxury Collection Hotel, Hyderabad', 'Madhapur', '8.2 Excellent', '₹ 157+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('The Park Hyderabad', 'Somajiguda', '5.9 Okay', '₹ 67+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/03/ae/24/ice-233787598-70639058_3XL-345367.jpg?width=335&height=268&crop=true'),
('Taj Falaknuma Palace', 'N/A', '9.5 Excellent', '₹ 661+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/a7/cb/c3/leonardo-1200539-Ladies_Room_O-406516.jpg?width=335&height=268&crop=true'),
('Radisson Blu Plaza Hotel Hyderabad Banjara Hills', 'Banjara Hills', '8.1 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Vivanta Hyderabad, Begumpet', 'Begumpet', '8.4 Excellent', '₹ 87+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Taj Deccan', 'Banjara Hills', '8.5 Excellent', '₹ 92+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Novotel Hyderabad Airport', 'N/A', '7.3 Good', '₹ 102+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Sheraton Hyderabad Hotel', 'N/A', '8.8 Excellent', '₹ 128+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('ITC Kakatiya, a Luxury Collection Hotel, Hyderabad', 'Begumpet', '7.9 Good', '₹ 125+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Banjara', 'Banjara Hills', '7.7 Good', '₹ 64+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Westin Hyderabad Mindspace', 'Madhapur', '8.5 Excellent', '₹ 147+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Taj Krishna', 'Banjara Hills', '8.2 Excellent', '₹ 120+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Lemon Tree Premier, Hitec City, Hyderabad', 'HITEC City', '7.5 Good', '₹ 93+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Oakwood Residence Kapil Hyderabad', 'N/A', '8.7 Excellent', '₹ 78+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('The Golkonda Hyderabad', 'N/A', '7.2 Good', '₹ 60+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Radisson Hyderabad Hitec City', 'Gachibowli', '6.9 Good', '₹ 108+', 'Parking Free Wi-Fi Pool', 'N/A'),
('Hyatt Hyderabad Gachibowli', 'N/A', '7.8 Good', '₹ 128+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Park Hyatt Hyderabad', 'Jubilee Hills', '8 Excellent', '₹ 129+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/6b/ac/80/ice-49839-63963623_3XL-093595.jpg?width=335&height=268&crop=true'),
('Trident Hyderabad', 'HITEC City', '9.2 Excellent', '₹ 150+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/77/09/84/leonardo-1272069-010-Trident_Hyderabad-Amara_O-247227.jpg?width=335&height=268&crop=true'),
('Novotel Hyderabad Convention Centre', 'N/A', '7.8 Good', '₹ 100+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Itc Kohenur, A Luxury Collection Hotel, Hyderabad', 'Madhapur', '8.2 Excellent', '₹ 157+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Fairmont Jaipur', 'N/A', '8.4 Excellent', '₹ 306+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/f4/44/d7/leonardo-177363706-a5g0_ba_01_p_3000x2250_O-346149.jpg?width=335&height=268&crop=true'),
('ITC Rajputana, a Luxury Collection Hotel, Jaipur', 'N/A', '8.3 Excellent', '₹ 145+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/rimg/himg/5d/f1/cd/leonardo-1124323-jailc-sheesh-mahal-6612-hor-clsc_O-335942.jpg?width=335&height=268&crop=true'),
('Hilton Jaipur', 'N/A', '8.1 Excellent', '₹ 144+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Holiday Inn Jaipur City Centre', 'N/A', '8.3 Excellent', '₹ 146+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Hotel Kalyan', 'N/A', '8 Excellent', '₹ 17+', 'Parking Free Wi-Fi', 'N/A'),
('Rambagh Palace', 'N/A', '9.5 Excellent', '₹ 704+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Crowne Plaza Jaipur Tonk Road', 'N/A', '8.3 Excellent', '₹ 201+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Jaipur Marriott Hotel', 'N/A', '8.2 Excellent', '₹ 153+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Trident, Jaipur', 'N/A', '8.8 Excellent', '₹ 117+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Umaid Bhawan - A Heritage Style Boutique Hotel', 'N/A', '8.5 Excellent', '₹ 66+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Radisson Blu Jaipur', 'N/A', '5.9 Okay', '₹ 119+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Le Méridien Jaipur Resort & Spa', 'N/A', '8.1 Excellent', '₹ 215+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('The Oberoi Rajvilas', 'N/A', '9.4 Excellent', '₹ 452+', 'Parking Pool Spa', 'N/A'),
('Jai Mahal Palace', 'N/A', '8.9 Excellent', '₹ 330+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Radisson Jaipur City Center', 'N/A', '8 Excellent', '₹ 89+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('Four Points by Sheraton Jaipur City Square', 'N/A', '7.1 Good', '₹ 168+', 'Parking Free Wi-Fi Pool Spa', 'N/A'),
('The Lalit Jaipur', 'N/A', '6.7 Good', '₹ 113+', 'Free Wi-Fi Pool Spa', 'N/A'),
('Atithi Guest House', 'N/A', '8.7 Excellent', '₹ 13+', 'Parking Free Wi-Fi', 'N/A'),
('Umaid Mahal - A Heritage Style Boutique Hotel', 'N/A', '8.4 Excellent', '₹ 51+', 'Parking Free Wi-Fi Pool Pet-friendly', 'N/A'),
('Samode Haveli', 'N/A', '8.9 Excellent', '₹ 273+', 'Parking Free Wi-Fi Pool Spa', 'N/A');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
