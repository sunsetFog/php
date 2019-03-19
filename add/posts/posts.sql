-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-18 05:07:55
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myphp`
--

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(3, '测试文章', '这是一篇测试文章，一些有的没的，哈哈哈哈哈哈', 'Lily', '2017-12-15 04:07:44'),
(4, '目送', '华安上小学第一天，我和他手牵着手，穿过好几条街，到维多利亚小学。九月初，家家户户院子里的苹果和梨树都缀满了拳头大小的果子，枝丫因为负重而沉沉下垂，越出了树篱，钩到过路行人的头发。\r\n \r\n　　很多很多的孩子，在操场上等候上课的第一声铃响。小小的手，圈在爸爸的、妈妈的手心里，怯怯的眼神，打量着周遭。他们是幼儿园的毕业生，但是他们还不知道一个定律：一件事情的毕业，永远是另一件事情的开启。\r\n \r\n　　铃声一响，顿时人影错杂，奔往不同方向，但是在那么多穿梭纷乱的人群里，我无比清楚地看着自己孩子的背影──就好像在一百个婴儿同时哭声大作时，你仍旧能够准确听出自己那一个的位置。华安背着一个五颜六色的书包往前走，但是他不断地回头；好像穿越一条无边无际的时空长河，他的视线和我凝望的眼光隔空交会。\r\n \r\n　　我看着他瘦小的背影消失在门里。\r\n \r\n　　十六岁，他到美国做交换生一年。我送他到机场。告别时，照例拥抱，我的头只能贴到他的胸口，好像抱住了长颈鹿的脚。他很明显地在勉强忍受母亲的深情。\r\n \r\n　　他在长长的行列里，等候护照检验；我就站在外面，用眼睛跟着他的背影一寸一寸往前挪。终于轮到他，在海关窗口停留片刻，然后拿回护照，闪入一扇门，倏忽不见。\r\n \r\n　　我一直在等候，等候他消失前的回头一瞥。但是他没有，一次都没有。\r\n \r\n　　现在他二十一岁，上的大学，正好是我教课的大学。但即使是同路，他也不愿搭我的车。即使同车，他戴上耳机──只有一个人能听的音乐，是一扇紧闭的门。有时他在对街等候公交车，我从高楼的窗口往下看：一个高高瘦瘦的青年，眼睛望向灰色的海；我只能想象，他的内在世界和我的一样波涛深邃，但是，我进不去。一会儿公交车来了，挡住了他的身影。车子开走，一条空荡荡的街，只立着一只邮筒。\r\n \r\n　　我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站立在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。\r\n \r\n　　我慢慢地、慢慢地意识到，我的落寞，仿佛和另一个背影有关。\r\n \r\n　　博士学位读完之后，我回台湾教书。到大学报到第一天，父亲用他那辆运送饲料的廉价小货车长途送我。到了我才发觉，他没开到大学正门口，而是停在侧门的窄巷边。卸下行李之后，他爬回车内，准备回去，明明启动了引擎，却又摇下车窗，头伸出来说：“女儿，爸爸觉得很对不起你，这种车子实在不是送大学教授的车子。”\r\n \r\n　　我看着他的小货车小心地倒车，然后“噗噗”驶出巷口，留下一团黑烟。直到车子转弯看不见了，我还站在那里，一口皮箱旁。\r\n \r\n　　每个礼拜到医院去看他，是十几年后的时光了。推着他的轮椅散步，他的头低垂到胸口。有一次，发现排泄物淋满了他的裤腿，我蹲下来用自己的手帕帮他擦拭，裙子也沾上了粪便，但是我必须就这样赶回台北上班。护士接过他的轮椅，我拎起皮包，看着轮椅的背影，在自动玻璃门前稍停，然后没入门后。\r\n \r\n　　我总是在暮色沉沉中奔向机场。\r\n \r\n　　火葬场的炉门前，棺木是一只巨大而沉重的抽屉，缓缓往前滑行。没有想到可以站得那么近，距离炉门也不过五米。雨丝被风吹斜，飘进长廊内。我掠开雨湿了前额的头发，深深、深深地凝望，希望记得这最后一次的目送。\r\n \r\n　　我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站立在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。', '龙应台', '2017-12-15 04:09:19'),
(5, '测试', '测试内容', '123', '2017-12-15 06:36:39'),
(6, '亲爱的安德烈', '孩子，我要求你读书用功，不是因为我要你跟别人比成绩，而是因为，我希望你将来会拥有选择的权利，选择有意义、有时间的工作，而不是被迫谋生。当你的工作在你心中有意义，你就有成就感。当你的工作给你时间，不剥夺你的生活，你就有尊严。成就感和尊严，给你快乐。', '龙应台', '2017-12-15 08:22:53'),
(7, '去大理', '是不是对生活不太满意\r\n很久没有笑过又不知为何\r\n既然不快乐又不喜欢这里\r\n不如一路向西 去大理\r\n路程有点波折\r\n空气有点稀薄\r\n景色越辽阔 心里越寂寞\r\n不知道谁在 何处等待\r\n不知道后来的后来\r\n谁的头顶上没有灰尘\r\n谁的肩上没有过齿痕\r\n也许爱情就在洱海边等着\r\n也许故事正在发生着\r\n谁的头顶上没有灰尘\r\n谁的肩上没有过齿痕\r\n也许爱情就在洱海边等着\r\n也许故事正在发生着', '郝云', '2017-12-15 09:11:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
