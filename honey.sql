-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 11:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honey`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_cost` int(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Acacia Honey', 'There are more than 300 types of honey out there, but the one that is considered the Best in the world is Acacia honey. Acacia is a plant native to Kashmir and is the major source of summer honey.', 2500, 'honey varieties', 'Acacia-Honey-300x300.jpg'),
(2, 'Ajwain Honey', ' We strongly condemn anything that messes around with the natural goodness of honey. So when we say ajwain honey we are talking about real honey harvested from the flowers of organic ajwain plants. The clever bees bring the health benefits of ajwain into every drop of honey produced, naturally.', 1950, 'honey varieties', 'Ajwain-Honey-300x300.jpg'),
(3, 'Cotton Honey', 'The honey is light in colour and the flavour is buttery with some juicy fruity undernotes. The honey is really sweet but gives a mild tingle at the back of the throat after consumption.', 2250, 'honey varieties', 'Cotton-Honey-300x300.jpg'),
(4, 'Eucalyptus Honey', 'Eucalyptus honey is mostly mono-floral i.e. obtained majorly form one species of flower. It is slightly darker than normal honey and has a very pleasant aromatic smell. It is not too sweet and has medium herbal note to it. The honey offers almost all the medicinal values of Eucalyptus with a refreshingly warm and woody caramel aftertaste. It works amazingly well as a healthy sweetener to your drinks, teas and as salad dressings.', 2750, 'honey varieties', 'Eucalyptus-Honey-300x300.jpg'),
(5, 'Forest Honey', 'Our tribal honey foragers travel deep within forest to harvest the honey collected by bees from these plants and ultimately give you, the nature’s best in a jar.', 1850, 'honey varieties', 'Forest-Honey-300x300.jpg'),
(6, 'Sidr/Wild Berry Honey', 'Sidr honey has a golden colour but it can darken over time. It is very sticky, has an aromatic smell and a rich buttery taste with very little to no aftertaste.', 2550, 'honey varieties', 'Sidr-Wild-Berry-Honey-300x300.jpg'),
(7, 'Sunflower Honey', 'Sunflower honey is harvested from the mesmerizing sunflower fields in Nagpur, Maharashtra, during the winters.\r\nSo just like the sunflowers, this honey too, is golden yellow, bright and full of health. It has a mild taste and flavour, making it apt for use as a daily sweetener.', 3350, 'honey varieties', 'Sunflower-Honey-300x300.jpg'),
(8, 'Honey and Nuts', 'So what’s your favourite nut? Is it almonds or cashew or pistachio? Well, we have a suggestion…have it all! Our delightful treat brings to you the taste and crunch of nuts, flavour of figs, softness of raisins and sweetness of honey, all together.', 3350, 'honey delicacies', 'Honey-N-Nuts-300x300.jpg'),
(9, 'Honey Blueberry Spread', 'Fruit spreads, more commonly called as jams enjoy almost a permanent slot on our breakfast menus. They are soft, juicy, delicious, easy to apply and make anything delicious, instantly. The only thing they lack is the health. Most of the spreads available in the market contain only a tiny percentage of the actual fruit they claim to have. Most of the inclusions are table sugars, artificial sweetener, artificial flavours, colours, preservatives and more. Our Honey Blueberry Spread is nothing but pure goodness of nature with a relishing taste.', 2750, 'honey delicacies', 'WHITE-BLUEBERRY-FRONT-300x300.jpg'),
(10, 'Honey Ginger Lemon', 'Lemonade is probably one of the things that we all share in common. No matter who we are or where we come from, a cool glass of nimbu pani (lemon juice) is all it takes to get nostalgic and relive our childhood memories for a few minutes. We simply wanted this blissful experience to be a tad bit healthier and hence the Honey Ginger Lemonade.', 2775, 'honey delicacies', 'lemonade-copy-300x300.jpg'),
(11, 'Honey Ginger Tea', 'Our Honey Ginger Tea is formulated using the best of our honey harvest and blended with organically grown, carefully extracted tea. What you get as a result is a powerful blend that is rich in health and taste. Ginger extracts further add to the flavour and health benefits.', 3250, 'honey delicacies', 'Honey-Ginger-Tea-300x300.jpg'),
(12, 'Honey Lemon Jelly', 'Every product at The Honey Shop has the purest of honey harvested from organic farms and fields. This honey is not only of superior quality but also very healthy. We blend the honey with high grade lemon extracts and turn them into gorgeous looking delicious jellies. So just open the pack and unlock some flavorous laughter, taste and health.\r\n\r\n', 4150, 'honey delicacies', 'Honey-Lemon-Jelly-300x300.jpg'),
(13, 'Honey Mango Fruit Spread', 'Our Honey Mango Spread is nothing but pure goodness of nature with a relishing taste.\r\nThis delicious preserve uses pure honey as a sweetener and the preserve base. Pulp from high grade ripe tropical mangoes is added to honey to create a preserve that is golden, glossy and smooth. It is delicious, full of natural flavours and easy to spread. Be it roti, bread or sandwich or toast – anything and everything becomes exciting with our honey mango spread.', 4350, 'honey delicacies', 'WHITE-MANGO-FRONT-300x300.jpg'),
(14, 'Honey Mango Jelly', 'We all are born with a sweet tooth or two. Some of us grab a sweet when we are depressed while some grab a sugary bite when celebrating. Indulging in sweetness every now and then is a sin we all commit. It’s not our fault actually. There is no healthy alternative out there for our regular sweets. Well, not anymore. Honey Mango Jellies are here to treat your palate.', 4000, 'honey delicacies', 'mango-jelly-copy-300x300.jpg'),
(15, 'Honey Mint Mojito', 'Traditional mojito preparations look exciting but are in fact full of non-appealing ingredients. Its tanginess is of artificial lemon-like flavours and the sweetness comes from harmful processed sugars. In contrast to this, our honey mojito contains pure and nature fresh honey with organic lemon extracts. Each jar is full of refreshment and nourishment and free of artificial flavours, colours and preservatives.', 3785, 'honey delicacies', 'mojito-copy-300x300.jpg'),
(16, 'Honey Orange Tea', 'Aren’t we just great at reading your mind? Just when you thought that tea cannot get any more interesting than it is, we bring to you honey tea  infused with the citric aroma and tangy taste of oranges. Yes, enjoy now your cuppa with the goodness of honey and refreshment of an orange. This irresistible tea is prepared by blending fresh and organic tea extracts with nature pure honey. The blend is then mixed with fresh orange zest that imparts it a subtle but identifiable flavour and fragrance.', 2550, 'honey delicacies', 'Honey-Orange-Tea-300x300.jpg'),
(17, 'Honey Peanut Butter', 'Every person who has ever tried to seek information on health foods would have come across the name peanut butter. Be it gym goers or simply conscious eaters, kids or adults, peanut butter is a hit amongst all. This butter made from grounded peanuts is rich in proteins and a super healthy way to get calories.', 3150, 'honey delicacies', 'honey-peanut-butter-300x300.jpg'),
(18, 'Honey Roasted Peanuts', 'This delicious snack is 100% natural with absolutely no preservatives, colours or flavours. High quality dry roasted whole nuts are tossed with our real honey. Every nut retains its nutritive value making the snack highly nourishing. There is vitamins, minerals and zero trans-fat. So what are you waiting for? Go Nuts!', 2950, 'honey delicacies', 'honey-roasted-peanuts-300x300.jpg'),
(20, 'Honey Charcoal Soap', 'This soap gives you a perfect combination of activated Charcoal and Honey. Activated charcoal absorbs dust and pollution from the skin and leaves the skin clear and radiant. It is a boon for oily skin as it removes excess oils and toxins which prevent acne and other skin problems. It gently exfoliates and lightens the skin keeping it healthy and fresh. Honey with charcoal tends to become antibacterial and a great moisturizer.', 850, 'skin care', 'Honey-Charcoal-Soap.jpg'),
(21, 'Honey Lavender Soap', 'The pleasant aroma of lavender clears your mind and gives you a fresh start. Combination of honey and Lavender is known to fight acne and other skin problems. Lavender is great after a hectic day as it eliminates nervous tension, relieves pain and enhances blood circulation. Nothing will unwind you better after a long day than our honey lavender bathing bar.\r\n\r\n', 1150, 'skin care', 'Honey-Lavender-Soap-300x300.jpg'),
(22, 'Honey Lemongrass Soap', 'Honey Lemongrass Bathing Bar has a strong refreshing fragrance that gives you a fresh start. It balances the Ph level of skin and hence is a natural skin toner. It also helps minimizing pores, limits secretions of oils and tightens the skin. Owing to the antifungal and antimicrobial properties of lemongrass, it prevents acne and other skin problems. Honey and lemongrass together are a great moisturizer and fights body odor.', 1000, 'skin care', 'lemongrass-soap-300x300.jpg'),
(23, 'Honey Milk and Rose Soap', 'A heavenly combination of milk, honey and rose that hydrates the skin and keeps it young. Milk is known to be great for skin as it has many vitamins, minerals and proteins. When honey and rose extracts are combined it becomes an excellent moisturizer and leaves the skin glowing and radiant. Regular use of this soap reduces wrinkles and prevents aging.', 1550, 'skin care', 'Honey-Milk-n-Rose-Soap-300x300.jpg'),
(24, 'Honey Mint and Lime Soap', 'This soap gives you a cool and refreshing after bath feel in the scorching heat of summer.\r\n\r\nApart from its cool effect, mint has anti inflammatory property and helps soothe mosquito bites and other irritations. Using mint for skin controls oiliness as it contains vitamin A. Lime has its own benefits, its content of vitamin C and citric acid helps brighten and lighten your skin over the period of time. All this with the amazing benefits of honey makes this soap an ideal choice in summers.', 1250, 'skin care', 'Honey-Mint-n-Lime-300x300.jpg'),
(25, 'Honey Orange Soap', 'This fruity burst of nature freshens up the morning and soothes the skin really well.\r\n\r\nThe orange peel extracts are rich in Vitamin C which is an excellent moisturizer and provides antioxidant and anti-agingbenefits to skin. Regular use of honey Orange Bar shields the skin from visible impact of pollution and keeps it firm and younger for long time. Its fruity aroma will blow your senses away.\r\n\r\n', 1450, 'skin care', 'Honey-Orange-Soap-300x300.jpg'),
(26, 'Bee Pollens / Propolis', 'Related products that come from bees and are known for their health benefits.', 950, 'honey medicines', 'Bee Pollen.jpg'),
(27, 'Honey Tonic', 'Our honey tonic is a potent therapeutic mixture of pure raw honey and some of the best ingredients namely garlic, ginger, lime and unfiltered apple cider vinegar. Our vinegar is prepared from carefully sourced organic apples fermented under highly controlled conditions using the best strains. The tonic can stand as your answer to an array of ailments which the synthetic world cannot treat without giving you nightmarish side effects. So the new saying could go like this – A spoon of honey tonic a day, keeps the doctor away!', 1150, 'honey medicines', 'tonic-300x300.jpg'),
(28, 'Honey Brain Tonic', 'Revitalize your mind with our all-natural Honey Brain Tonic. Crafted with pure, raw honey and infused with powerful brain-boosting ingredients, this tonic is designed to enhance focus, memory, and mental clarity. Whether you’re tackling a busy day or looking for a natural energy boost, our Honey Brain Tonic supports cognitive function while providing the delicious, sweet taste of honey.', 1345, 'honey medicines', 'Honey Brain Tonic.webp'),
(29, 'Exotic Gifts Hamper', 'We love to surprise our loved ones with gifts, don’t we? Stylish clothes, dazzling jewellery and beautiful artefacts, we don’t leave any stone unturned in making their day. However, what’s ironical is that despite loving them with all our hearts, we seldom think about adding a bit of health to their life or gifts. But not anymore.\r\nGet your loved ones a bouquet of nature fresh exoticness with this honeylicious hamper containing:\r\n1.Honey and Nuts (300 grams)\r\n2.Forest Honey (325 grams)\r\n3.Acacia Honey (325 grams)\r\n4.Sidr Honey (325 grams)', 5550, 'gift hamper', 'Exotic-Honey-Hamper-266x266.png'),
(32, 'Go Honeylicious Gift Hamper', 'You don’t need a reason to get your hands on dry fruits. They are healthy, tasty and loved by all. And when this people’s favourite is dipped in our signature organic honey, the exoticness reaches a whole new level. And when you want a break from the crunch, just pop in the soft honeylicious jellies. Isn’t this a perfectly balanced gift for your loved ones?', 5585, 'gift hamper', 'Honey-Bloom-Hamper-scaled-266x266.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` text NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `gender`, `phone`, `password`, `admin`) VALUES
('', 'carol@gmail.com', 'female', '+254712345678', '1234', ''),
('carol_j', 'carol@gmail.com', 'female', '+254712345678', '1234', ''),
('carol_j', 'carol@gmail.com', 'female', '+254712345678', '1234', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
