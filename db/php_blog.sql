-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2022 at 06:07 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your life', '5-habits-that-can-improve-your-life', 0, 'habits-to-improve-your-life.jpg', '<h3>1. Wake Up At a Reasonable Time</h3>\r\n<p>Getting up early can make a significant impact on how your day is going to shape out. Of course, this isn\'t to say that you have to get up at five am each day. However, training your body to wake up earlier is an excellent habit that will provide a big reward.</p>\r\n\r\n<p>Getting up early gives you the time to complete your morning to-do list and be able to craft the best routine to tackle the day. Even getting up 15-20 minutes earlier than you usually do can be a great habit to develop. It might not seem like much, but it\'s a start and will add more time back into your day, so you\'re not overwhelmed with your schedule.</p>\r\n\r\n<p>Waking up earlier doesn\'t have to mean you\'re getting less sleep either. In 2019, Sleep Cycle, a free app to track sleeping routines, released a study of their three million active monthly users. They concluded the average person sleeps 7 hours and 18 minutes each night. In addition, the average bedtime was 11:39 pm, and wake-up time was 7:09 am. So Americans are getting sleep, but also not oversleeping.</p>\r\n\r\n<p>Getting enough sleep but still being able to wake up early is key to starting your day on the right track. Not everybody needs an alarm to wake up, though, and that\'s okay. Waking up around 7:00 am is actually something that leaders like Elon Musk and Mark Zuckerberg practice each day. Waking up early will set you in a nice daily routine that can help you be productive.</p>\r\n<br>\r\n\r\n<h3>2. Schedule Out Your Day</h3>\r\n<p>Scheduling out your day is another vital addition to this list of habits that can change your life. It\'s important to know what you\'re doing for the day to avoid getting distracted and losing focus. In addition, scheduling out your day can give you an idea of your priorities so you can accomplish what\'s most important to you.</p>\r\n\r\n<p>With a clear schedule, you can be productive and not overwhelmed and bogged down by all your responsibilities. But, of course, there are some things that just won\'t make it into your schedule, and that\'s okay. We want to have a plan but also don\'t want to work ourselves to the point of exhaustion.</p>\r\n\r\n<p>If your current schedule isn\'t working, that\'s okay; there are ways to fix it. We\'ve highlighted a few tips on how you can get your schedule catered to you. Of course, some things are more important to schedule into your day than others. We\'ve mentioned seven crucial components that should be included in your daily routine.</p>\r\n\r\n<p>Expressing gratitude and scheduling downtime are just a few of the habits that can be added to your day. Sure, you can prioritize productivity, but you also need to be kind to yourself in mind as well. Time is our most valuable resource, and something we can\'t get back once it\'s gone. Having a schedule will help you successfully use those minutes and hours and help establish a good routine instead of wasting away time.</p>\r\n<br>\r\n\r\n<h3>3. Give Yourself Deadlines</h3>\r\n<p>Giving yourself deadlines to achieve each day is one of the best habits you can develop. Most people don\'t like deadlines or the pressure that comes with them, but this can actually be helpful when you change your perspective.</p>\r\n\r\n<p>Having a goal in mind when a task should be completed can greatly impact your day. Instead of never having a time in mind when something should be done, give yourself that timeline with a deadline. Deadlines have helped me so much in the past because I often procrastinate. There are some things I probably never would have gotten done if I didn\'t have a specific deadline.</p>\r\n\r\n<p>There are a few key benefits you can gain working under a deadline. Accountability is a big one. Hold yourself accountable if your deadline comes and goes and you still don\'t have the task completed. Do you have someone you can count on to be your accountability partner? If not, consider asking a trusted friend or family member to help you.</p>\r\n\r\n<p>Having that accountability allows us to access why the task wasn\'t finished and how we will improve by hitting a deadline in the future. Having a deadline in place can also help you build momentum. Knowing you have that completion time in mind can help you stay motivated and limit distractions.</p>\r\n<br>\r\n\r\n<h3>4. Make Time For Movement</h3>\r\n<p>Establishing a habit of moving your body throughout the day can change your life. It\'s not good for us to be sitting all day without getting up and moving. According to a Mayo Clinic 2019 study, people who sit for eight hours a day with no physical activity have the same risk of dying similar to someone who smokes or is obese. This is bad news for many Americans because sedentary jobs in America have increased more than 83% since 1953, according to the American Heart Association. According to the same survey, only 20% of Americans have physically active jobs. The average office worker actually sits 15 hours a day.</p>\r\n\r\n<p>That number is even higher for people who are still commuting to the office every day. Sitting without exercise can raise our chances of many different health risks, including high blood pressure, stroke. Heart disease, obesity, high cholesterol, high blood pressure, and more. What can we do to offset these health risks and work from our seat lifestyle?</p>\r\n\r\n<p>Well, we need physical activity in our lives. Something as simple as using a treadmill or walking around the block can make a significant impact on your health. Make sure to take breaks and get up from your chair. Standing up as often as every 30 minutes can be huge for you. If you can even stand while doing phone calls, this can be an excellent way to move around and get your legs moving while also getting working done as well.</p>\r\n<br>\r\n\r\n<h3>5. Prioritize Practicing Self Care</h3>\r\n<p>Believe it or not, you are your most important asset. We need to take care of ourselves above all else. Make sure you are making time daily to address your self-care. It could be something as simple as meditation, prayer, reading, journaling, or even just focusing on a non-work-related goal you have in mind. Prioritize passion projects that you have as well.</p>\r\n\r\n<p>Self-care focuses on both your mental and physical health. We need to keep our health in mind and shouldn\'t overwork ourselves. If your time allows scheduling a course can be good for you. It can be job-related or just in a passion that you\'ve had. It\'s essential to prioritize ourselves and our well-being.</p>\r\n<br>\r\n\r\n<h3>Summary</h3>\r\n<p>There has been a shift to working from our desks that hasn\'t been seen before. We can\'t let our physical or mental health be affected by this way of life. Work is vital, of course, but we are our most important asset. These habits can help you prioritize yourself and improve your life in every way.</p>\r\n', 1, '2022-06-22 16:19:50', '2022-06-21 14:00:00'),
(2, 1, 'Second post on LifeBlog', 'second-post-on-lifeblog', 0, 'hero-banner.jpg', 'This is the body of the second post on this site', 1, '2022-06-21 15:50:29', '2022-06-21 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

DROP TABLE IF EXISTS `post_topic`;
CREATE TABLE IF NOT EXISTS `post_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_topic_ibfk_2` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Diary', 'diary');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mani', 'mani@codeforesight.com', 'Admin', '1234', '2022-06-21 13:57:58', '2022-06-21 13:57:58');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
