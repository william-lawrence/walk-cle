BEGIN TRANSACTION;

SET IDENTITY_INSERT locations ON;
INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (1, 'Progressive Field', '2401 Ontario St.', 'Cleveland', 'OH', '44115', 41.496211, -81.6852289, 'progressive', 'Major League Baseball is exciting at Progressive Field, home of the two-time defending American League Central champion Indians. 81 home games from early April through September give baseball fans and thrill seekers plenty of options to be entertained in a family-friendly atmosphere. Tours are available. For more information: (216) 420-HITS or indians.com.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (2, 'Quicken Loans Arena', '1 Center Ct.', 'Cleveland', 'OH', '44115', 41.4964797, -81.6904016, 'quickenloansarena', 'Feel the rush of excitement as your favorite artist takes the stage. Experience the heart-pumping adrenaline as the crowd goes wild for the home team. Quicken Loans Arena is THE place to enjoy a night out with your family and friends, where good times happen and memories are always made! Home to the NBA Cleveland Cavaliers, the AHL Cleveland Monsters, the AFL Cleveland Gladiators and host to the best entertainment in the region, The Q welcomes close to two million guests to 200+ events each year, including world-class concerts and family shows.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (3, 'Tower City Center', '230 West Huron Rd.', 'Cleveland', 'OH', '44113', 41.497226,-81.6962377, 'towercity', 'Tower City Center is located in the heart of downtown Cleveland. The retail center houses three levels of shops and eateries, as well as fine restaurants, 10-screen theater, two world-class hotels and direct access to the JACK Cleveland Casino. The center is connected via a pedestrian walkway to Quicken Loans Arena, home of the Cleveland Cavaliers, and Progressive Field, home of the Cleveland Indians.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (4, 'The Arcade', '401 Euclid Ave.', 'Cleveland', 'OH', '44114', 41.5003968, -81.6928342, 'thearcade', 'One of Cleveland’s most iconic landmarks, The Arcade Cleveland is a historic retail center, home to an array of shopping and dining establishments, and the iconic Hyatt Regency Hotel. Located within walking distance of East 4th Street, the House of Blues, Quicken Loans Arena, Playhouse Square, the Horseshoe Casino, The Rock & Roll Hall of Fame, Progressive Field, Tower City Center, Heinen’s, Cleveland’s Medical Mart and the Convention Center.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (5, 'Greater Cleveland Aquarium', '2000 Sycamore St.', 'Cleveland', 'OH', '44113', 41.4965393, -81.7059933, 'aquarium', 'The Greater Cleveland Aquarium has one very important mission: we energize curiosity by passionately educating guests about aquatic life and conservation. We offer engaging and exciting guest experiences in a family-friendly setting; our mission is brought to life with captivating exhibits rich with aquatic biodiversity, with friendly personalities and a nationally recognized historical building.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (6, 'Barrio', '503 Prospect Ave.', 'Cleveland', 'OH', '44114', 41.4986165, -81.6914944, 'barrio', 'Want a custom designed taco with all your favorite fixings? At Barrio, YOU get to select as many or as few items you''d like to have on your taco, bowl, or guac. The atmosphere is casual with a unique energy that''s created from the combination of our decor, music, and staff. We''re also known for our vast selection of tequila, whiskey, and beer.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (7, 'Mabel''s', '2050 E 4th St.', 'Cleveland', 'OH', '44115', 41.4989235,-81.6924205, 'mabels', 'Chef Michael Symon''s Mabel''s BBQ is a Cleveland-style barbecue restaurant located in the heart of downtown Cleveland. By incorporating Bertman’s Ballpark Mustard into the barbecue sauce, using Eastern European spices and smoking meat over local fruitwood, Symon has created a barbecue style Clevelanders can call their own. The space’s arched ceilings, industrial lighting and exposed brick are reminiscent of Cleveland landmark West Side Market, evoking the feeling of a rustic smokehouse with a laid back vibe. Friends can kick back at a communal picnic tables and feast on brisket, kielbasa and Cleveland kraut and pickles, pork ribs and loads of pig parts with eastern European inspired seasonal sides.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (8, 'Hilarities', '2035 E 4th St', 'Cleveland', 'OH', '44115', 41.4989235,-81.6924205, 'hilarities', 'Hilarities 4th Street Theatre is one of the largest made-for-comedy venues in the country, presenting the best in national stand-up comedy. Hilarities features a tiered showroom that accommodates 400 guests including a mezzanine balcony with 8 individual skyboxes seating between 8 to 12 guests each. The showroom features comfortable custom-made seating. Preferred seating is available for advance ticket purchases.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (9, 'The Corner Alley', '402 Euclid Ave.', 'Cleveland', 'OH', '44114', 41.499536,-81.6921057, 'corneralley', 'The Corner Alley Downtown offers a range of culinary and entertainment options, including a 16-lane bowling alley, 4k HDTV’s featuring live sports and the NFL Sunday Ticket®, a walk-up bar with 24 drafts and an extensive bourbon selection, a casual dining restaurant featuring Americana-inspired cuisine, and dedicated rooms for parties and groups. The venue features open patios, an open-air bar with more than 50 high-top and shared seats and an open space that serves as both a dining room and a setting for live entertainment. Visitors will also enjoy a wide variety of games and entertainment such as video games, shuffleboard, air hockey, foosball, and more.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (10, 'CLE Clothing Co.', '342 Euclid Ave', 'Cleveland', 'OH', '44114', 41.4995137,-81.6926162, 'cleclothing', 'Stop in to find all of your favorite CLE Clothing Co. t-shirts, hoodies, hats, accessories, and more! Have enough of our gear? We also carry apparel, accessories, artwork and so much more from 50+ other local artists and brands we love!');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (11, 'The Big Bang Dueling Piano Bar', '1163 Front Ave', 'Cleveland', 'OH', '44113', 41.5000734,-81.7084889, 'bigbang', 'Ready to bang? Leave your inhibitions at the door and join the party! The Big Bang combines music, comedy and audience participation into a fast-paced, high-energy show that’s unlike anything you’ve ever experienced. With two pianos and two performers, it’s non-stop, totally wild fun. The music is based entirely on audience requests, so every night is different—but no matter what, an amazing sing-along, laugh-along, dance-along night is always guaranteed.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (12, 'Punch Bowl Social Cleveland', '1086 W 11th St', 'Cleveland', 'OH', '44113', 41.499959,-81.7077547, 'punchbowl', 'Punch Bowl Social cultivates an eclectic approach to the new concept of eat-ertainment. In a design-forward environment described as "dirty modern," Punch Bowl Social effectively combines a diner-inspired scratch-kitchen, craft beverages, and classic parlor-style entertainment that will turn your date night into a shuffleboard showdown and your bowling buds into chicken ''n'' waffle connoisseurs. #HeresToGoingOutRight');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (13, 'Goodtime III', '825 East Ninth Street Pier, North Coast Harbor', 'Cleveland', 'OH', '44114', 41.5102138,-81.6976639, 'goodtime3', 'For courtesy, comfort, and just plain fun, you cannot match the experience of a cruise on the Cuyahoga River and Lake Erie aboard Cleveland''s largest sight-seeing vessel. The Goodtime III is the largest quadruple-deck 1,000 passenger luxury ship on the Great Lakes, which offers plenty of room, and you are not confined to your seats.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (14, 'JACK Casino', '100 Public Square', 'Cleveland', 'OH', '44113', 41.4985688,-81.6952882, 'jackcasino', 'No matter what you want to play, we’ve got your game. From the newest slots and table games to live poker, we’ve got 100,000 square feet of exciting, action-packed choices. With so many thrilling ways to win, it’s no wonder we’re consistently voted the Best Casino and Best Slots in town.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (15, 'Cleveland Museum of Art', '11150 East Blvd', 'Cleveland', 'OH', '44106', 41.508917,-81.6138023, 'artmuseum', 'The Cleveland Museum of Art (CMA) is an art museum in Cleveland, Ohio, located in the Wade Park District, in the University Circle neighborhood on the city''s east side. Internationally renowned for its substantial holdings of Asian and Egyptian art, the museum houses a diverse permanent collection of more than 45,000 works of art from around the world. The museum provides general admission free to the public. With a $755 million endowment, it is the fourth-wealthiest art museum in the nation. With about 705,000 visitors annually (2016), it is one of the most visited art museums in the world.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (16, 'Cleveland Museum of Natural History', '1 Wade Oval Dr', 'Cleveland', 'OH', '44106', 41.511522,-81.6150687, 'nathistmuseum', 'When you visit the Cleveland Museum of Natural History, you become part of a tradition of science and exploration nearly 100 years in the making! Known as a great place for families and children, the Museum is also a center for world-class scientific research. A tradition that began with a small group of curious Clevelanders continues today, here in our labs and around the world.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (17, 'Great Lakes Science Center', '601 Erieside Ave', 'Cleveland', 'OH', '44114', 41.5089762,-81.6954248, 'sciencecenter', 'Great Lakes Science Center, home of the NASA Glenn Visitor Center, makes science, technology, engineering and math (STEM) come alive for more than 300,000 visitors a year. With hundreds of hands-on exhibits, temporary exhibitions, the Cleveland Clinic DOME Theater, Steamship William G. Mather, daily science demonstrations, seasonal camps and more, guests will always find a reason to Stay Curious! The Science Center is funded in part by the citizens of Cuyahoga County through Cuyahoga Arts and Culture.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (18, 'Rock & Roll Hall of Fame', '1100 E 9th St', 'Cleveland', 'OH', '44114', 41.5085414,-81.6975572, 'rock&roll', 'The Rock and Roll Hall of Fame, located on the shore of Lake Erie in downtown Cleveland, Ohio, recognizes and archives the history of the best-known and most influential artists, producers, engineers, and other notable figures who have had some major influence on the development of rock and roll. The Rock and Roll Hall of Fame Foundation was established on April 20, 1983, by Atlantic Records founder and chairman Ahmet Ertegun. In 1986, Cleveland was chosen as the Hall of Fame''s permanent home.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (19, 'Public Square', '3 Public Square', 'Cleveland', 'OH', '44114', 41.499488,-81.6951217, 'publicsquare', 'Public Square is the two-block (formerly four-block) central plaza of downtown Cleveland, Ohio. Based on an 18th-century New England model, it was part of the original 1796 town plat overseen by Moses Cleaveland, and remains today as an integral part of the city''s center. The 10-acre (4.0 ha) square is centered on the former intersection of Superior Avenue and Ontario Street.[2] Cleveland''s three tallest buildings, Key Tower, 200 Public Square and the Terminal Tower, face the square.Other Public Square landmarks include the 1855 Old Stone Church and the former Higbee''s department store made famous in the 1983 film A Christmas Story, which reopened as the Horseshoe Casino Cleveland on May 14, 2012. The square was redeveloped in 2016 by the city into a more pedestrian-friendly environment with green space on the northern half of the square, a hard surface on the southern half of the square, and transit lanes on a newly constructed Superior Avenue (which is open only to bus traffic). A 125-foot-tall (38 m) monument to Civil War soldiers and sailors occupies the southeast section of the square. City founder Moses Cleaveland and reformist mayor Tom L. Johnson each have statues on the square.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (20, 'Voinovich Park', '800 E 9th Street Pier', 'Cleveland', 'OH', '44114', 41.5103826,-81.6992604, 'voinpark', 'The 4.5-acre Voinovich Bicentennial Park is at the north end of the East Ninth Street Pier, along the pier’s west side. Voinovich Park’s center is a large, artistically-terraced green space which is surrounded by impervious surface areas. The park’s southwest corner has a concrete stage. Fishing is permitted in designated areas. Voinovich Bicentennial Park hosts a variety of festivals and events during summer months, some of which require admission fees. This location also affords picturesque views of the downtown Cleveland skyline. The park  is also home to 1 of 5 Cleveland Script Signs installed by Destination Cleveland.  Our sign is located  on the south perimeter of the park and creates the perfect backdrop for a memorable photo op at the lakefront.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (21, 'Edgewater Park', '6500 Cleveland Memorial Shoreway', 'Cleveland', 'OH', '44102', 41.4913568,-81.7337407, 'edgewaterpark', 'The 147 acre Edgewater Park is the westernmost park in Cleveland Metroparks Lakefront Reservation. Edgewater Park features 9000 feet of shoreline, dog and swim beaches, boat ramps, fishing pier, picnic areas and grills and a rentable pavilion.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (22, 'Cleveland Metroparks Zoo', '3900 Wildlife Way', 'Cleveland', 'OH', '44109', 41.4459344,-81.7148021, 'zoo', 'The Cleveland Metroparks Zoo is a 183-acre zoo in Cleveland, Ohio. The Zoo is divided into several areas: Australian Adventure; African Savanna; Wilderness Trek; The Primate, Cat & Aquatics Building; The RainForest; and Waterfowl Lake. Cleveland Metroparks Zoo has one of the largest collections of primates in North America, and features Monkey Island, a concrete island on which a large population of colobus monkeys are kept in free-range conditions (without cages or walls). The Zoo is a part of the Cleveland Metroparks system. The Cleveland Metroparks Zoo was founded in 1882. It is one of the most popular year-round attractions in Northeast Ohio; by attendance, the Cleveland Indians were the most popular attraction in Northeast Ohio in 2007 with a total attendance of over 2.2 million. The Zoo announced that more than 1.2 million people visited in 2007, marking a 2% rise in attendance from 2006.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (23, 'A Christmas Story House', '3159 W 11th St', 'Cleveland', 'OH', '44109', 41.4687292,-81.6895818, 'xmashouse', 'A Christmas Story House, now restored to its movie splendor, is open year round to the public for tours and overnight stays. Directly across the street from the house is the official A Christmas Story House Museum, which features original props, costumes and memorabilia from the film, as well as hundreds of rare behind-the-scenes photos. Among the props and costumes are the toys from the Higbee’s window, Randy’s snowsuit, the chalkboard from Miss Shields’ classroom and the family car. After reliving A Christmas Story at Ralphie’s house don’t forget to visit the museum gift shop for your own Major Award Leg Lamp and other great movie memorabilia.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (24, 'Lake View Cemetary', '12316 Euclid Ave', 'Cleveland', 'OH', '44106', 41.5138354,-81.6005574, 'lakeview', 'With 285 breathtaking acres, Lake View Cemetery is the perfect place to spend the afternoon—or the afterlife. We offer exceptional, affordable, and highly reverential resting places to any and all denominations. So stop by anytime. And stay as long as you like.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (25, 'First Energy Stadium', '100 Alfred Lerner Way', 'Cleveland', 'OH', '44114', 41.5060535,-81.7017368, 'firstenergy', 'FirstEnergy Stadium, home of the Cleveland Browns, is a multipurpose facility located on the shore of Lake Erie. Construction of the stadium began on May 15, 1997, and it opened on September 12, 1999 when the Browns took on their division rivals: the Pittsburgh Steelers. Originally named Cleveland Browns Stadium, it is built on the same site as Cleveland Municipal Stadium, the former home of the Cleveland Browns and Cleveland Indians.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (26, 'Great Lakes Brewing Company', '2516 Market Ave', 'Cleveland', 'OH', '44113', 41.4843807,-81.7067074, 'glbc', 'Located in Cleveland''s vibrant Ohio City neighborhood, our brewpub is full of history and charm. Order a pint at our taproom''s beautiful Tiger Mahogany bar, where the "untouchable" Eliot Ness once sat. Our 7-barrel brewhouse is right next door, where our pub brewer creates classic pub exclusive beers and experiments with new styles. Next door, our eco-friendly beer garden features a canvas retractable roof, a radiant-heat floor and fireplace, and a straw bale wall. In warm weather, seating spills out onto our cobblestone patio. It''s a great spot to people-watch or chill in the shade with your well-behaved pooch. Our brewpub''s basement beer cellar holds the brewpub''s fermenters and our new small-batch barrel-aging operation. We also offer overflow seating upstairs in our Market and Rockefeller Rooms. Have a seat at the bar or a table crafted from reclaimed Cleveland wood, or at a booth under our barrel wall.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (27, 'Thirsty Parrot', '812 Huron Rd E', 'Cleveland', 'OH', '44115', 41.498074,-81.6879997, 'thirstyparrot', 'Everybody''s talking about the Thirsty Parrot, conveniently located on the corner of East Ninth & Bolivar, just a fly ball from the centerfield gate to Progressive Field. The party is here before and after every Indians game. We''re also open for special events at the Quicken Loans Arena. Look for the Caribbean Blue awning over our island-sized deck or just listen for the party music.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (28, 'Slyman''s Restuarant', '3106 St Clair Ave NE', 'Cleveland', 'OH', '44114', 41.5128536,-81.6734138, 'slymans', 'Retro breakfast & lunch deli known for corned beef sandwiches served in simple diner digs.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (29, 'Bar 32', '100 Lakeside Ave E', 'Cleveland', 'OH', '44114', 41.5031267,-81.6978736, 'bar32', '32 floors above the skyline with direct views of the splashing waves of Lake Erie and the cityscape is our one of a kind Bar 32. Craft drinks and domestic and imported artisan cheeses are available to delight our guests. Our goal is to take your breath away with the stunning views, high-style bar menu, and showy drink selection. Please note, guests must be aged 21 years and above to enter the bar.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (30, 'Coastal Taco', '1146 Old River Rd', 'Cleveland', 'OH', '44113', 41.4992186,-81.7072756, 'coastaltaco', 'A happening waterfront destination offering Mexican fare & cocktails, plus a variety of events.');

INSERT INTO locations(id, name, streetAddy, city, state, zip, photo, latitude, longitude)
VALUES (31, 'Gallucci''s', '6610 Euclid Ave', 'Cleveland', 'OH', '44103', 'galluccis', 41.5034040, -81.6428820);

SET IDENTITY_INSERT locations OFF;

INSERT INTO locations_categories (location_id, category)
VALUES (1, 'sports');

INSERT INTO locations_categories (location_id, category)
VALUES (1, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (2, 'sports');

INSERT INTO locations_categories (location_id, category)
VALUES (2, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (3, 'shopping');

INSERT INTO locations_categories (location_id, category)
VALUES (3, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (3, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (4, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (4, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (4, 'shopping');

INSERT INTO locations_categories (location_id, category)
VALUES (5, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUEs (5, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (6, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (7, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (8, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (8, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (8, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (9, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (9, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (9, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (10, 'shopping');

INSERT INTO locations_categories (location_id, category)
VALUES (11, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (11, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (12, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (12, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (13, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (13, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (14, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (15, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (15, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (16, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (16, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (17, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (17, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (18, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (18, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (19, 'parks');

INSERT INTO locations_categories (location_id, category)
VALUES (19, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (20, 'parks');

INSERT INTO locations_categories (location_id, category)
VALUES (21, 'parks');

INSERT INTO locations_categories (location_id, category)
VALUES (22, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (23, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (23, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (24, 'arts & culture');

INSERT INTO locations_categories (location_id, category)
VALUES (24, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (25, 'sports');

INSERT INTO locations_categories (location_id, category)
VALUES (25, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (26, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (26, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (27, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (27, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (28, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (29, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (30, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (30, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (31, 'restaurants');

COMMIT TRANSACTION;