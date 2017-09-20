-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2017 at 12:12 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crafting`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `imageurl`) VALUES
(1, 'Atomos Bow', 'Bow adds 5 dexterity, 50 Hit Points and allows a user to fire 2 arrows at once. (Attack a boss or enemy twice)', 'atomosbow.png'),
(2, 'Staff of the Unnamed', 'Staff adds 5 intelligence and 90 AP. Allows user to stop time for a single turn.  Other players must wait for the player to finish their turn regardless of powers being used.', 'staffoftheuntamed.jpg'),
(3, 'Excalipoor', '-5 strength, -10 Hit points Is this truly a legendary sword?  Student can break the fourth wall and deal 1 damage to the entire class.  Equipping this sword in battle gives the user a chance to get a unique vigilance card.', 'excalipoor.jpg'),
(4, 'Ragnarok', '10 Strength. 100 Hit points - 5 dexterity. Equipping this massive sword allows the user the ability to attack multiple enemies as once.  May attack up to 5 enemies.', 'ragnarok.png'),
(5, 'Time Medallion', 'User can use this device to explore any event in Anteria, past or present.  They may use it to reattempt bosses or enemies.  Using this device too often may cause unintentional side effects.', 'timemedallion.jpg'),
(6, 'Potion', 'Heals 50% of one’s Hit Points', 'potion.png'),
(7, 'X-Potion', 'Heals 100% of one’s Hit Points', 'xpotion.jpg'),
(8, 'Max Potion', 'Heals 100% of one’s Hit Points and grants 50% damage reduction for 3 days', 'maxpotion.jpg'),
(9, 'Kitchen Knife', 'This item allows the user to remove a limb from a multi limbed enemy only, making them easier to defeat.', 'kitchenknife.jpg'),
(10, 'Iron Spear', 'This item allows the user to force enemy to miss their turn.  Can be used on bosses or in pvp.', 'ironspear.png'),
(11, 'Slash and Dash', 'Slash and Dash: This power allows the user the ability to remove a limb from a monster making it weaker. What limb will you choose?', 'slashanddash.jpg'),
(12, 'Staff of Insight', 'The staff allows the user to eliminate two misdirections when presented with multiple paths to choose.', 'staffofinsight.png'),
(13, 'Scroll of Vision', 'When faced with a difficult decision, this scroll will make it for you! Use wisely, as they are exceedingly rare.', 'scrollofvision.png'),
(14, 'Ring of Many Pockets', 'Wearing this ring allows you to hide items in the void preventing you from losing them should you fall.  Only this ring can access them, so should you lose the ring you must forge another.', 'ringofmanypockets.jpg'),
(15, 'Decoy', 'Creates a diversion that allows one to bypass a common enemy', 'decoy.jpg'),
(16, 'Scale of the Justicar', 'Should a user require additional marks they may round to the nearest 10% Requires the user to work with his guild on that question and work to a proficient understanding first.  Caution, remember the laws of rounding before use!', 'scaleofthejusticar.jpg'),
(17, 'Shards of Knowledge', 'This allows a student to gain access to 1/6th of a cheat sheet.', 'shardsofknowledge.jpg'),
(18, 'Pick Pocket', 'Using this card, and with a lucky roll of the dice a player can steal one card of their choice from another player', 'pickpocket.jpg'),
(19, 'Rename Card', 'Using this card, a player can anonymously change the name of any player or guild in Anteria.  This is done in total anonymity and whoever casts it shall not be revealed.', 'renamecard.jpg'),
(20, 'Vault Key', 'User can use this key to secretly resubmit a quest for re-evaluation.  A group of keys (at least 3) can gain access to something more!', 'vaultkey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_material`
--

CREATE TABLE `item_material` (
  `id` int(11) NOT NULL,
  `materialID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_material`
--

INSERT INTO `item_material` (`id`, `materialID`, `itemID`, `quantity`) VALUES
(1, 21, 1, 1),
(2, 18, 1, 1),
(3, 10, 1, 1),
(4, 15, 1, 2),
(5, 20, 2, 1),
(6, 18, 2, 1),
(7, 10, 2, 1),
(8, 15, 2, 1),
(9, 14, 2, 1),
(10, 11, 2, 2),
(11, 19, 3, 1),
(12, 15, 3, 9),
(13, 10, 3, 1),
(14, 11, 3, 3),
(15, 19, 4, 1),
(16, 18, 4, 1),
(17, 15, 4, 2),
(18, 8, 4, 1),
(19, 10, 4, 1),
(20, 17, 5, 6),
(21, 16, 5, 1),
(22, 9, 5, 6),
(23, 5, 5, 6),
(24, 3, 6, 3),
(25, 14, 6, 1),
(26, 3, 7, 3),
(27, 13, 7, 1),
(28, 14, 7, 1),
(29, 3, 8, 3),
(30, 13, 8, 1),
(31, 14, 8, 1),
(32, 9, 8, 1),
(33, 12, 9, 2),
(34, 10, 9, 1),
(35, 6, 9, 1),
(36, 12, 10, 1),
(37, 6, 10, 2),
(38, 2, 10, 1),
(39, 12, 11, 2),
(40, 15, 11, 1),
(41, 10, 11, 1),
(42, 6, 11, 2),
(43, 12, 12, 2),
(44, 17, 12, 1),
(45, 15, 12, 1),
(46, 12, 13, 3),
(47, 18, 13, 1),
(48, 15, 13, 1),
(49, 17, 13, 2),
(50, 7, 14, 1),
(51, 15, 14, 1),
(52, 10, 14, 1),
(53, 17, 14, 1),
(54, 4, 15, 1),
(55, 3, 15, 1),
(56, 1, 15, 2),
(57, 1, 16, 2),
(58, 10, 16, 1),
(59, 6, 16, 2),
(60, 7, 16, 1),
(61, 11, 16, 2),
(62, 1, 17, 1),
(63, 12, 17, 1),
(64, 15, 17, 1),
(65, 4, 18, 1),
(66, 1, 18, 1),
(67, 2, 18, 2),
(68, 9, 18, 1),
(69, 2, 19, 1),
(70, 17, 19, 1),
(71, 15, 19, 2),
(72, 17, 20, 2),
(73, 10, 20, 2),
(74, 15, 20, 2),
(75, 6, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tierID` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `name`, `tierID`, `description`, `imageurl`) VALUES
(1, 'Wool', 1, 'Common material found all over Anteria. Sheared from sheep.', 'wool.jpg'),
(2, 'Silk', 2, 'Woven from spiders found in the far west.', 'silk.jpg'),
(3, 'Lala Leaf', 1, 'Used in the crafting of many potions.', 'lalaleaf.png'),
(4, 'Rough Hide', 2, 'Untreated skin of a wild animal.', 'roughhide.jpg'),
(5, 'Dragon Scales', 3, 'Found from the hides of dragons.', 'dragonscales.png'),
(6, 'Iron', 1, 'Quite abundant in the lands of Anteria. Mined.', 'iron.jpg'),
(7, 'Gold', 2, 'Quite malleable, useful and valuable in crafting currency and jewelry.', 'gold.jpg'),
(8, 'Adamantium', 4, 'Said to be a myth. Said to forge the strongest of items. Pretty heavy though.', 'adamantium.jpg'),
(9, 'Dragon Bone', 3, 'Very large bones that are also very heavy. Taken from dead dragons.', 'dragonbone.png'),
(10, 'Hammer', 1, 'Needed to craft many weapons and items.', 'hammer.jpg'),
(11, 'Nails', 1, 'Needed in carpentry crafting.', 'nails.jpg'),
(12, 'Wood', 1, 'Common material found by felling trees.', 'wood.png'),
(13, 'Flame Root', 2, 'Only grows in places over 45 degrees Celsius.', 'flameroot.jpg'),
(14, 'Glass', 1, 'Transparent brittle material created from sand, ash and limestone.', 'glass.jpg'),
(15, 'Fire Stone', 1, 'Often a reagent in crafting.', 'firestone.jpg'),
(16, 'Ancient Medallion', 4, 'Not much is known about this item.', 'ancientmedallion.jpg'),
(17, 'Mystery Stone', 3, 'This stone can only be found in very high places like mountains. Its usefulness is still unknown.', 'mysterystone.jpg'),
(18, 'Rainbow Shell', 4, 'Material of legends, said to be 100 times as flexible as gold and 10 times stronger than iron, but 1/10th of the weight.', 'rainbowshell.jpg'),
(19, 'Rusted Sword', 4, 'Old rusted sword. Perhaps it was once useful, but time has removed all evidence of that.', 'rustedsword.png'),
(20, 'Time Worn Staff', 4, 'Old staff. Perhaps it was once used by a master of the arcane arts, but time has removed all evidence of that.', 'timewornstaff.png'),
(21, 'Weathered Bow', 4, 'Old moldy bow. Echos of the forest resonate from the bow, suggesting it was once quite powerful.', 'weatheredbow.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tier`
--

CREATE TABLE `tier` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `number` int(11) NOT NULL,
  `colour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tier`
--

INSERT INTO `tier` (`id`, `name`, `number`, `colour`) VALUES
(1, 'common', 1, 'green'),
(2, 'uncommon', 2, 'blue'),
(3, 'rare', 3, 'purple'),
(4, 'extremely_rare', 4, 'orange');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_material`
--
ALTER TABLE `item_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materialID` (`materialID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tierID` (`tierID`);

--
-- Indexes for table `tier`
--
ALTER TABLE `tier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `item_material`
--
ALTER TABLE `item_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tier`
--
ALTER TABLE `tier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_material`
--
ALTER TABLE `item_material`
  ADD CONSTRAINT `item_material_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `item_material_ibfk_2` FOREIGN KEY (`materialID`) REFERENCES `material` (`id`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`tierID`) REFERENCES `tier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
