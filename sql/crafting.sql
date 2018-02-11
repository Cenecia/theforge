-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 04:47 PM
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
(20, 'Vault Key', 'User can use this key to secretly resubmit a quest for re-evaluation.  A group of keys (at least 3) can gain access to something more!', 'vaultkey.jpg'),
(21, 'Cooked Meat', 'Food Item.  Cooked.  Heals 20 hp on consumption.', 'cookedmeat.png'),
(22, '250 Boss Battle Points', 'This item allows the user access to a moderate amount of points before the battle even begins to give their team an advantage!', ''),
(23, '1000 Boss Battle Points', 'This item allows the user access to a large amount of points before the battle even begins to give their team an advantage!', ''),
(24, 'Parry', 'This item allows the user to deflect an iron spear attack back to the attacker causing them to miss 2 turns (...you might want to keep this card a secret!)', 'parry.png'),
(25, 'Deep Pockets', 'This item allows the user to access their expanded inventory space.', 'deeppockets.png'),
(26, 'Shield of Swifty', 'This item allows the user to block an enemy spear rendering it useless.  It\'s actually just a giant sword…. Impossible to lift.', 'shieldofswifty.png'),
(27, 'Iron Sword', 'This item allows a student to borrow a sword from the GM.  With it you can roll for damage using a d12 in either boss or pvp battles.', 'ironsword.png'),
(28, 'Double XP', 'Using this item on a regular daily battle will allow the user double xp point value.   It cannot be used on major battles or pvp.', 'doublexp.png'),
(29, 'Cleanse', 'Should a fellow team be too far ahead in the leaderboards you can use this card to eliminate 500XP in the blink of an eye.  Be careful, using this card may come back to haunt you.', 'cleanse.png'),
(30, 'Ninja', 'Using this card will allow you to nab 250 XP from an opposing player and add it to your XP stash.', 'ninja.png'),
(31, 'Firefly', 'Are you falling behind in XP?  Use this card to ward all XP gained by an enemy guild for the day.', 'firefly.png'),
(32, 'Smoke Screen', 'Using this advanced form of decoy will allow the user to bypass AND get full rewards for a small quest.', 'smokescreen.png'),
(33, 'Card of Corpus Juris', 'Using this card allows you to “lawyer up” and take back your original name if you are a victim of the rename card.', 'cardofcorpusjuris.png'),
(34, 'Strategy Time', 'With this card a user can confer with a fellow guild member of their choosing for 1 minute.  \r\nThis card may only be used with GM approval.', 'strategytime.png'),
(35, 'Iron Dagger', 'This item allows a student to borrow a dagger from the GM.  With it you can roll for damage using a d8 in either boss or pvp battles.', 'irondagger.png');

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
(75, 6, 20, 2),
(76, 15, 21, 1),
(77, 23, 21, 1),
(78, 15, 22, 1),
(79, 24, 22, 1),
(80, 15, 23, 1),
(81, 24, 23, 2),
(82, 25, 23, 1),
(83, 6, 24, 1),
(84, 24, 24, 1),
(85, 6, 25, 2),
(86, 11, 25, 1),
(87, 4, 26, 1),
(88, 6, 26, 1),
(89, 10, 27, 1),
(90, 15, 27, 1),
(91, 6, 27, 2),
(92, 24, 28, 1),
(93, 25, 28, 1),
(94, 1, 28, 1),
(95, 24, 29, 1),
(96, 25, 29, 1),
(97, 1, 29, 1),
(98, 15, 29, 2),
(99, 24, 30, 1),
(100, 2, 30, 2),
(101, 1, 30, 2),
(102, 24, 31, 3),
(103, 3, 31, 1),
(104, 14, 31, 1),
(105, 24, 32, 1),
(106, 1, 32, 2),
(107, 15, 32, 2),
(108, 25, 33, 2),
(109, 1, 33, 1),
(110, 15, 33, 2),
(111, 24, 34, 1),
(112, 25, 34, 2),
(113, 14, 34, 1),
(114, 10, 35, 1),
(115, 15, 35, 1),
(116, 6, 35, 1);

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
(21, 'Weathered Bow', 4, 'Old moldy bow. Echos of the forest resonate from the bow, suggesting it was once quite powerful.', 'weatheredbow.jpg'),
(22, 'Wheel of Cheese', 1, 'Food Item.  May eat as many as you want, but let\'s', 'wheelofcheese.png'),
(23, 'Raw Meat', 1, 'Food Item. Uncooked.', 'rawmeat.png'),
(24, 'Dragonling Eye', 2, 'Taken from the eyes of young smaller dragons.', 'dragonlingeye.png'),
(25, 'Glow Stone', 2, 'A unique stone that is used as a catalyst in many ', 'glowstone.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `item_material`
--
ALTER TABLE `item_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
