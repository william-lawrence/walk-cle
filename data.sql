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
VALUES (7, 'Mabel''s', '2050 E 4th St.', 'Cleveland', 'OH', '44115', 41.4989235,-81.690232, 'mabels', 'Chef Michael Symon''s Mabel''s BBQ is a Cleveland-style barbecue restaurant located in the heart of downtown Cleveland. By incorporating Bertman’s Ballpark Mustard into the barbecue sauce, using Eastern European spices and smoking meat over local fruitwood, Symon has created a barbecue style Clevelanders can call their own. The space’s arched ceilings, industrial lighting and exposed brick are reminiscent of Cleveland landmark West Side Market, evoking the feeling of a rustic smokehouse with a laid back vibe. Friends can kick back at a communal picnic tables and feast on brisket, kielbasa and Cleveland kraut and pickles, pork ribs and loads of pig parts with eastern European inspired seasonal sides.');

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

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (32, 'Shooters on the Water', '1148 Main Ave', 'Cleveland', 'OH', '44113', 41.498258, -81.707084, 'shooters', 'Established in 1987, Shooters'' inaugural summer season broke all records, as visitors from around the region clamored to share in the spectacular taste of Florida perched on the Cuyahoga River. Shooters was one of the first projects on the West Bank of the Cleveland Flats and led the way in the rapid growth and rebirth of the downtown waterfront area.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (33, 'Cowell & Hubbard', '1305 Euclid Ave', 'Cleveland', 'OH', '44115', 41.5011818, -81.6829501, 'cowell&hubbard', 'Cowell & Hubbard, Cleveland’s premier jewelry store, was founded in 1861. As growth of the city spanned further east, Cowell & Hubbard moved their store to 1305 Euclid Avenue. Zack Bruell’s reincarnation of this space welcomes his latest culinary destination into the heart of PlayhouseSquare. With such history attached to the building, Bruell found it not only fitting to pay homage to its past in name, but in plating brilliant treasured dishes that his customers have grown to expect.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (34, 'Severance Hall', '11001 Euclid Ave', 'Cleveland', 'OH', '44106', 41.5063477, -81.6093361, 'severance', 'Regarded by many music-lovers as one of the world''s most beautiful concert halls, Severance Hall opened in 1931 as the home of The Cleveland Orchestra. The building is named for John L. Severance and his wife, Elisabeth, who initially pledged $1 million for its construction. Elisabeth died unexpectedly early in the design process, and John Severance made additional contributions toward the building in her memory. The building’s architectural significance has been recognized by local and national preservation societies, including the Cleveland Landmarks Commission and the National Register of Historic Places, and Severance Hall is a recipient of the Honor Award by the National Trust for Historic Preservation.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (35, 'Playhouse Square', '1501 Euclid Ave #200', 'Cleveland', 'OH', '44115', 41.5013048, -81.6807947, 'playhouse', 'As the country’s largest performing arts center outside of New York, the not-for-profit performing arts center utilizes the arts to engage individuals and attract more than one million guests per year to its 1,000+ annual events. These audiences act as the catalyst for economic growth and vitality within the region.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (36, 'State Theatre', '1519 Euclid Avenue', 'Cleveland', 'OH', '44115', 41.5013048, -81.6807947, 'statetheater', 'The KeyBank State Theatre is a theater located at 1519 Euclid Avenue in downtown Cleveland, Ohio. It is one of the theaters that make up Playhouse Square. It was designed by the noted theater architect Thomas W. Lamb and was built in 1921 by Marcus Loew to be the flagship of the Ohio branch of the Loew''s Theatres company.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (37, 'Connor Palace Theatre', '1615 Euclid Ave', 'Cleveland', 'OH', '44115', 41.5012181, -81.6803584, 'connorpalace', 'The last of the four principal Playhouse Square theaters (and the most expensive to build at $3,500,000), the Palace Theatre, renamed Connor Palace in 2014, opened Nov. 6, 1922 as the flagship of B.F. Keith’s vaudeville chain. The sign atop its building advertising the Connor Palace was “the world’s largest electrical sign” circa 1921. The Connor Palace’s elegant lobby was highlighted by a million-dollar art collection and another “world’s largest”…the largest woven-in-one-piece carpet. The venue showcased the likes of Fanny Brice, Bing Crosby, Houdini, Bob Hope, Frank Sinatra and The Three Stooges before changing over to films. In its current role as a “legit theater,” the Connor Palace seats 2,800.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (38, 'Allen Theatre', '1407 Euclid Ave', 'Cleveland', 'OH', '44115', 41.5012213, -81.6813178, 'allen', 'The Allen Theatre’s April 1, 1921 opening night attracted more patrons than its 3,080 seat capacity that scores of disappointed filmgoers had to be turned away. Originally built as an opulent silent movie house, the Allen required no backstage facilities (dressing rooms, storage, etc.). To later accommodate legitimate theater presentations, it was necessary to build a “stage house” onto the venue during restoration in preparation for its reopening October 3, 1998, when it began to host long-running, touring Broadway productions and concerts. The Cleveland Ballet’s move to San Jose made the KeyBank State Theatre available for Broadway, and use of the Allen decreased, paving the way for PlayhouseSquare to invite new resident companies to the district.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (39, 'Hanna Theatre', '2067 E 14th St', 'Cleveland', 'OH', '44115', 41.5000773, -81.6806887, 'hanna', 'Originally seating 1,397 for legitimate theater, the Hanna Theatre opened March 28, 1921, and would go on to host such stage and film luminaries as Al Jolson, Katherine Hepburn, Henry Fonda, Ethel Barrymore, Ginger Rogers, Helen Hayes, Mary Martin and Yul Brynner. Playhouse Square assumed management of the Hanna in August 1999 following its purchase of the Hanna Office Building, which houses the venue. In 2008, the Hanna underwent a renovation to add a thrust stage, re-work its seating to 550 and become the main performance space for Playhouse Square’s long-time constituent, Great Lakes Theater.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (40, 'Western Reserve Historical Society', '10825 East Blvd', 'Cleveland', 'OH', '44106', 41.5133686, -81.6107857, 'wrhs', 'Founded in May 1867, the Western Reserve Historical Society is Cleveland’s oldest existing cultural institution. It was established as the historical branch of the Cleveland Library Association which dated from 1848. The Society’s creation was part of an important trend in the United States, the establishment of private organizations to oversee the collection and preservation of documents and objects relating to various aspects of national, regional and local history. While its original focus was on the history of “…Cleveland and the Western Reserve, and generally what relates to the history of Ohio and the Great West,” it now concentrates on the history of Northeast Ohio.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (41, 'Tremont Taphouse', '2572 Scranton Rd', 'Cleveland', 'OH', '44113', 41.4771844, -81.6953077, 'tremonttaphouse', 'Upscale bar fare is offered along with a long list of craft beers in a warm multilevel space.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (42, 'Parallax', '2179 W 11th St', 'Cleveland', 'OH', '44113', 41.4823982, -81.6890059, 'parallax', 'Parallax, located in Cleveland’s Tremont neighborhood, is Chef Zachary Bruell’s flagship restaurant, with a strong emphasis on fusion seafood and sushi.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (43, 'Mitchell''s Homemade Ice Cream', '1867 W 25th St', 'Cleveland', 'OH', '44113', 41.4858906, -81.7043063, 'mitchells', 'Each batch is hand-crafted in our Ohio City Kitchen (watch us anytime). Ingredients that grow well in our Ohio climate we get from friends around here. Ingredients that grow best in different climates we get from the world''s best producers. We do a lot of searching, and we''ll never be done.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (44, 'Westside Market', '1979 W 25th St', 'Cleveland', 'OH', '44113', 41.4846863, -81.7030619, 'wsmarket', 'The West Side Market is the oldest indoor/outdoor market space in Cleveland, Ohio. This landmark features over 100 vendors and is located in the Ohio City neighborhood.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (45, 'Climb Cleveland', '2190 Professor St', 'Cleveland', 'OH', '44113', 41.48198, -81.687347, 'clerockgym', 'Climb Cleveland is here for non-climbers to try something new, for very experienced climbers to build their bodies and skills, and for climbers of all levels in between. We are all climbers, but some are just taking a break from it. We all grew up climbing something, even if it was over the railing of a crib or a tree in our grandparent’s back yard.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (46, 'Great Lakes Watersports', '1148 Main Ave', 'Cleveland', 'OH', '44113', 41.4981538, -81.7058435, 'glwatersports', 'Great Lakes Watersports, located at the mouth of the Cuyahoga River, rents jet skis, boats and kayaks. No experience necessary. We provide all safety equipment and instructions.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (47, 'The Cleveland Flea', '3615 Superior Ave', 'Cleveland', 'OH', '44114', 41.5128891, -81.6654561, 'flea', 'Part urban treasure hunt. Part culinary adventure. Part maker center. The Cleveland Flea is a small business incubator that draws thousands of Northeast Ohioans to lesser-known neighborhoods in the city to shop curated vintage, culinary all-stars and the most talented makers in the region. But it''s always been more than just a market. Vintage and salvage dealers set up shop next to jewelers, fine artists and bakers, furniture crafters and charcuterie makers. The Flea is at once a foodie feast and community gathering place, a weekend excursion in the city and a movement to back a brilliant creative class.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (48, 'Cleveland Public Library', '325 Superior Ave', 'Cleveland', 'OH', '44114', 41.501174, -81.691775, 'cpl', 'The Main Library in downtown Cleveland consists of the historic Main Library Building built in 1925 and renovated in 1999; the Louis Stokes Wing completed in 1997; and the Eastman Reading Garden located between the two buildings. The two buildings and the garden take up an entire city block on Superior Avenue between East 3rd Street and East 6th Street. The Main Library’s Subject Departments are divided between the two buildings.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (49, 'Cleveland Script Sign', 'E 9th Street Pier', 'Cleveland', 'OH', '44114', 41.5100927, -81.6973283, 'signE9', 'You may have seen these in your friends'' or family''s Instagram pics, or even on national TV. The Cleveland script signs were installed just before the Republican National Convention and now serve as a permanent tribute to the city. Destination Cleveland originally installed three Cleveland script signs in picturesque locations with the intention that both locals and visitors would seek them out for signature photos they might share with friends and family on social media.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (50, 'Cleveland Script Sign', '1502 Abbey Ave', 'Cleveland', 'OH', '44113', 41.4846756, -81.6950563, 'signtre', 'You may have seen these in your friends'' or family''s Instagram pics, or even on national TV. The Cleveland script signs were installed just before the Republican National Convention and now serve as a permanent tribute to the city. Destination Cleveland originally installed three Cleveland script signs in picturesque locations with the intention that both locals and visitors would seek them out for signature photos they might share with friends and family on social media.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (51, 'Cleveland Script Sign', 'Upper Edgewater Dr', 'Cleveland', 'OH', '44102', 41.4878889, -81.7434224, 'signedge', 'You may have seen these in your friends'' or family''s Instagram pics, or even on national TV. The Cleveland script signs were installed just before the Republican National Convention and now serve as a permanent tribute to the city. Destination Cleveland originally installed three Cleveland script signs in picturesque locations with the intention that both locals and visitors would seek them out for signature photos they might share with friends and family on social media.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (52, 'Cleveland Script Sign', '1831 Columbus Rd', 'Cleveland', 'OH', '44113', 41.4895647, -81.702519, 'signfoundry', 'You may have seen these in your friends'' or family''s Instagram pics, or even on national TV. The Cleveland script signs were installed just before the Republican National Convention and now serve as a permanent tribute to the city. Destination Cleveland originally installed three Cleveland script signs in picturesque locations with the intention that both locals and visitors would seek them out for signature photos they might share with friends and family on social media.');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (53, 'Inner Bliss Yoga Studio', '1224 Huron Road E', 'Cleveland', 'OH', '44115', 41.500084, -81.682665, 'bliss', 'As you walk into the blissful sanctuary of Inner Bliss Yoga Studio, you will feel a warmth hug you. Delight in the present as you find your breath and journey toward self-discovery through the practices of yoga. Our kind, welcoming teachers create an environment of acceptance, a vibe of joy and lots of fun! We encourage laughter and humility is celebrated!');

INSERT INTO locations (id, name, streetAddy, city, state, zip, latitude, longitude, photo, description)
VALUES (54, 'Tech Elevator', '7100 Euclid Ave #140', 'Cleveland', 'OH', '44103', 41.503641, -81.639041, 'tekids', 'Where all the mathmagic and squirrel cigar parties happen. Long live the party parrot.');

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
VALUEs (5, 'artsculture');

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
VALUES (15, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (15, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (16, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (16, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (17, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (17, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (18, 'artsculture');

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
VALUES (22, 'parks');

INSERT INTO locations_categories (location_id, category)
VALUES (23, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (23, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (24, 'artsculture');

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

INSERT INTO locations_categories (location_id, category)
VALUES (32, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (32, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (33, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (34, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (34, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (35, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (36, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (37, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (38, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (39, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (40, 'artsculture');

INSERT INTO locations_categories (location_id, category)
VALUES (40, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (41, 'bars');

INSERT INTO locations_categories (location_id, category)
VALUES (41, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (42, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (43, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (44, 'shopping');

INSERT INTO locations_categories (location_id, category)
VALUES (44, 'restaurants');

INSERT INTO locations_categories (location_id, category)
VALUES (44, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (45, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (46, 'activities');

INSERT INTO locations_categories (location_id, category)
VALUES (47, 'shopping');

INSERT INTO locations_categories (location_id, category)
VALUES (48, 'historical');

INSERT INTO locations_categories (location_id, category)
VALUES (48, 'artsculture');

-- Test users
SET IDENTITY_INSERT users ON;

INSERT INTO users (id, username, password, salt, role, visitor, email, avatar)
VALUES (1, 'BillyShakes', 'drrJ56U5ROBC5qS5THxV3LdEPjY=', 'dWcJOOdOTb0=', 'Role', 0, 'william.lawrence.75@gmail.com', 123);

SET IDENTITY_INSERT users OFF;

-- Test check-ins
INSERT INTO check_ins(user_id, location_id, date)
VALUES (1, 31, GETDATE());

--Test badges
SET IDENTITY_INSERT badges ON;

INSERT INTO badges (id, name, description)
VALUES (1, 'Team Player', 'You root for the home team every time! Earned by checking in at First Energy Stadium, Progressive Field, and Quicken Loans Arena.');

SET IDENTITY_INSERT badges OFF;

COMMIT TRANSACTION;

