

--
-- Category Example Data
--
INSERT INTO `#__jem_categories` VALUES (2, 1, 'Alternative', 'alternative', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'Alternative', 'Blablubb blafasel', 'images/jem/categories/category-alternative.png', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 1,'','',1,2,1,'','','','','','','','');
INSERT INTO `#__jem_categories` VALUES (3, 1, 'House', 'house', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'House', 'Blablub blafasel ele', 'images/jem/categories/category-house.png', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 2,'','',3,4,1,'','','','','','','','');
INSERT INTO `#__jem_categories` VALUES (4, 1, 'Rock', 'rock', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'Rock', 'Blablub blafasel el hala', 'images/jem/categories/category-rock.png', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 3,'','',5,6,1,'','','','','','','','');
UPDATE `#__jem_categories` SET rgt = 7 WHERE id = 1;

-- --------------------------------------------------------

--
-- Event Example Data
--

INSERT INTO `#__jem_events` VALUES (1, 3, CURDATE(), NULL, '12:20:00', NULL, 'Alternative Night', 'alternative-night', 62, '0000-00-00 00:00:00', 0, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-1.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '' , '' ,'' ,1 ,'', '' ,'','','','','','','','');
INSERT INTO `#__jem_events` VALUES (2, 2, CURDATE(), CURDATE()+ INTERVAL 2 DAY, '16:30:00', '22:00:00', 'Balkan Beatz', 'balkan-beatz', 62, '0000-00-00 00:00:00', 62, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-2.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '','','','','','','','','');
INSERT INTO `#__jem_events` VALUES (3, 1, CURDATE()+ INTERVAL 4 DAY, NULL, '20:00:00', NULL, 'Electronic Beats', 'electronic-beats', 62, '0000-00-00 00:00:00', 0, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-3.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '','','',1,'','','','','','','','','','');
INSERT INTO `#__jem_events` VALUES (4, 3, CURDATE()+ INTERVAL 4 DAY, NULL, '20:00:00', NULL, 'Rock Punk', 'rock-punk', 62, '0000-00-00 00:00:00', 0, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-4.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '','','',1,'','','','','','','','','','');
INSERT INTO `#__jem_events` VALUES (5, 2, CURDATE()+ INTERVAL 4 DAY, NULL, NULL, NULL, 'Electroschock', 'electroschock', 62, '0000-00-00 00:00:00', 0, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-5.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '','','',1,'','','','','','','','','','');
INSERT INTO `#__jem_events` VALUES (6, 1, CURDATE()+ INTERVAL 4 DAY, NULL, NULL, NULL, 'DJ Night', 'dj-night', 62, '0000-00-00 00:00:00', 0, 1, '127.0.0.1', NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '[title], [a_name], [categories], [times]', 'The event titled [title] starts on [dates]!', 0, 0, 0, 0, 0, '0000-00-00', '', 'images/jem/events/event-6.png', 0, '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '','','',1,'','','','','','','','','','');

-- --------------------------------------------------------

--
-- Category relations Example Data
--

INSERT INTO `#__jem_cats_event_relations` VALUES (1, 2, 1, 0);
INSERT INTO `#__jem_cats_event_relations` VALUES (2, 2, 2, 0);
INSERT INTO `#__jem_cats_event_relations` VALUES (3, 3, 3, 0);
INSERT INTO `#__jem_cats_event_relations` VALUES (4, 3, 5, 0);
INSERT INTO `#__jem_cats_event_relations` VALUES (5, 4, 4, 0);
INSERT INTO `#__jem_cats_event_relations` VALUES (6, 4, 6, 0);

-- --------------------------------------------------------


--
-- Venue Example Data
--

INSERT INTO `#__jem_venues` VALUES (1, 'Douala', 'douala', 'http://www.douala.de', 'Schubertstraße 2', '88214', 'Ravensburg', '', 'DE', '', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'Douala, Ravensburg', 'Blafasel Blubb blabber', 'images/jem/venues/venue-douala.png', 1, 62, '127.0.0.1', NOW(), '0000-00-00 00:00:00', 0, 1, 1, 0, '0000-00-00 00:00:00', 1,'','','','','','','','','','','','','');
INSERT INTO `#__jem_venues` VALUES (2, 'Kamikaze', 'kamikaze', 'http://www.klubkamikaze.de/', 'Oberlinden 8', '79098', 'Freiburg im Breisgau', '', 'DE', '', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'Kamikaze, Freiburg im Breisgau', 'Blafasel Blubb blabber', 'images/jem/venues/venue-kamikaze.png', 1, 62, '127.0.0.1', NOW(), '0000-00-00 00:00:00', 0, 1, 1, 0, '0000-00-00 00:00:00', 2,'','','','','','','','','','','','','');
INSERT INTO `#__jem_venues` VALUES (3, 'Crash', 'crash', 'http://www.crash-freiburg.de', 'Schnewlinstraße 7', '79098', 'Freiburg', '', 'DE', '', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 'Crash, Freiburg', 'Blafasel Blub Blalabber', 'images/jem/venues/venue-crash.png', 1, 62, '127.0.0.1', NOW(), '0000-00-00 00:00:00', 0, 1, 1, 0, '0000-00-00 00:00:00', 3,'','','','','','','','','','','','','');
