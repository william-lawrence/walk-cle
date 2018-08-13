
-- Switch to the system (aka master) database
USE master;
GO

-- Delete the WalkCLE Database (IF EXISTS)
IF EXISTS(select * from sys.databases where name='WalkCLE')
DROP DATABASE WalkCLE;
GO

-- Create a new WalkCLE Database
CREATE DATABASE WalkCLE;
GO

-- Switch to the WalkCLE Database
USE WalkCLE
GO

BEGIN TRANSACTION;

CREATE TABLE users
(
	id			int			identity(1,1),
	username	varchar(50)	not null,
	password	varchar(50)	not null,
	salt		varchar(50)	not null,
	role		varchar(50)	default('user'),
	visitor		bit,
	email		varchar(50) not null,
	avatar		varchar(50)

	constraint pk_users primary key (id)
);

CREATE TABLE locations
(
	id			int			identity(1,1),
	name		varchar(50) not null,
	streetAddy	varchar(50)	not null,
	city		varchar(25) not null,
	state		varchar(2)	not null,
	zip			varchar(5)	not null,
	latitude	decimal(8,6),
	longitude	decimal(8,6),
	photo		varchar(50),
	description	varchar(1024),
	url			varchar(50),
	facebook	varchar(50),
	twitter		varchar(50),

	constraint pk_locations primary key (id),
);

CREATE TABLE locations_categories
(
	location_id	int			not null,
	category	varchar(25)	not null

	constraint pk_location_category primary key (location_id, category),
	constraint fk_location foreign key (location_id) references locations (id),
	CONSTRAINT ck_category_check CHECK (category IN ('bars', 'restaurants', 'sports', 'parks', 'shopping', 'arts & culture', 'historical', 'activities'))
);

CREATE TABLE badges
(
	id			int			identity(1,1),
	name		varchar(50)	not null,
	description	varchar(250) not null,
	image		varchar(50)

	constraint pk_badges primary key (id)
);

CREATE TABLE user_badges
(
	user_id		int			not null,
	badge_id	int			not null,
	date		datetime	default getdate()

	constraint pk_user_badges_user_id_badge_id primary key (user_id, badge_id)
);

CREATE TABLE check_ins
(
	user_id		int			not null,
	location_id	int			not null,
	date		datetime	default getdate()

	constraint pk_check_ins_user_id_location_id primary key (user_id, location_id)
);

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Progressive Field', '2401 Ontario St.', 'Cleveland', 'OH', '44115', 'progressive', 'Major League Baseball is exciting at Progressive Field, home of the two-time defending American League Central champion Indians. 81 home games from early April through September give baseball fans and thrill seekers plenty of options to be entertained in a family-friendly atmosphere. Tours are available. For more information: (216) 420-HITS or indians.com.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Quicken Loans Arena', '1 Center Ct.', 'Cleveland', 'OH', '44115', 'quickenloansarena', 'Feel the rush of excitement as your favorite artist takes the stage. Experience the heart-pumping adrenaline as the crowd goes wild for the home team. Quicken Loans Arena is THE place to enjoy a night out with your family and friends, where good times happen and memories are always made! Home to the NBA Cleveland Cavaliers, the AHL Cleveland Monsters, the AFL Cleveland Gladiators and host to the best entertainment in the region, The Q welcomes close to two million guests to 200+ events each year, including world-class concerts and family shows.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Tower City Center', '230 West Huron Rd.', 'Cleveland', 'OH', '44113', 'towercity', 'Tower City Center is located in the heart of downtown Cleveland. The retail center houses three levels of shops and eateries, as well as fine restaurants, 10-screen theater, two world-class hotels and direct access to the JACK Cleveland Casino. The center is connected via a pedestrian walkway to Quicken Loans Arena, home of the Cleveland Cavaliers, and Progressive Field, home of the Cleveland Indians.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('The Arcade', '401 Euclid Ave.', 'Cleveland', 'OH', '44114', 'thearcade', 'One of Cleveland’s most iconic landmarks, The Arcade Cleveland is a historic retail center, home to an array of shopping and dining establishments, and the iconic Hyatt Regency Hotel. Located within walking distance of East 4th Street, the House of Blues, Quicken Loans Arena, Playhouse Square, the Horseshoe Casino, The Rock & Roll Hall of Fame, Progressive Field, Tower City Center, Heinen’s, Cleveland’s Medical Mart and the Convention Center.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Greater Cleveland Aquarium', '2000 Sycamore St.', 'Cleveland', 'OH', '44113', 'aquarium', 'The Greater Cleveland Aquarium has one very important mission: we energize curiosity by passionately educating guests about aquatic life and conservation. We offer engaging and exciting guest experiences in a family-friendly setting; our mission is brought to life with captivating exhibits rich with aquatic biodiversity, with friendly personalities and a nationally recognized historical building.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Barrio', '503 Prospect Ave.', 'Cleveland', 'OH', '44114', 'barrio', 'Want a custom designed taco with all your favorite fixings? At Barrio, YOU get to select as many or as few items you''d like to have on your taco, bowl, or guac. The atmosphere is casual with a unique energy that''s created from the combination of our decor, music, and staff. We''re also known for our vast selection of tequila, whiskey, and beer.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Mabel''s', '2050 E 4th St.', 'Cleveland', 'OH', '44115', 'mabels', 'Chef Michael Symon''s Mabel''s BBQ is a Cleveland-style barbecue restaurant located in the heart of downtown Cleveland. By incorporating Bertman’s Ballpark Mustard into the barbecue sauce, using Eastern European spices and smoking meat over local fruitwood, Symon has created a barbecue style Clevelanders can call their own. The space’s arched ceilings, industrial lighting and exposed brick are reminiscent of Cleveland landmark West Side Market, evoking the feeling of a rustic smokehouse with a laid back vibe. Friends can kick back at a communal picnic tables and feast on brisket, kielbasa and Cleveland kraut and pickles, pork ribs and loads of pig parts with eastern European inspired seasonal sides.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Pickwick & Frolic Restaurant and Club', '2035 E 4th St.', 'Cleveland', 'OH', '44115', 'pickwick', 'Pickwick & Frolic Restaurant and Club, “Home to Hilarities 4th Street Theatre,” is a complete entertainment experience. Pickwick features a 185-seat restaurant offering American rustic cuisine made from scratch! You can also find Kevin’s Martini Bar & Taproom, serving the latest and most innovative martinis in town. Dine outside on our patio if you wish or enjoy Pickwick & Frolic stage productions in our Frolic Cabaret. Entertain your corporate or social guests anywhere in our 27,000 square foot facility, including Cleveland’s only Champagne Bar and Hilarities 4th Street Theatre. Hilarities, a 400 seat built-for-comedy venue complete with skybox loge seating, has been featuring the best in live national stand-up comedy for more than 30 years!');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('The Corner Alley', '402 Euclid Ave.', 'Cleveland', 'OH', '44114', 'corneralley', 'The Corner Alley Downtown offers a range of culinary and entertainment options, including a 16-lane bowling alley, 4k HDTV’s featuring live sports and the NFL Sunday Ticket®, a walk-up bar with 24 drafts and an extensive bourbon selection, a casual dining restaurant featuring Americana-inspired cuisine, and dedicated rooms for parties and groups. The venue features open patios, an open-air bar with more than 50 high-top and shared seats and an open space that serves as both a dining room and a setting for live entertainment. Visitors will also enjoy a wide variety of games and entertainment such as video games, shuffleboard, air hockey, foosball, and more.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('CLE Clothing Co.', '342 Euclid Ave', 'Cleveland', 'OH', '44114', 'CLEclothing', 'Stop in to find all of your favorite CLE Clothing Co. t-shirts, hoodies, hats, accessories, and more! Have enough of our gear? We also carry apparel, accessories, artwork and so much more from 50+ other local artists and brands we love!');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('The Big Bang Dueling Piano Bar', '1163 Front Ave', 'Cleveland', 'OH', '44113', 'bigbang', 'Ready to bang? Leave your inhibitions at the door and join the party! The Big Bang combines music, comedy and audience participation into a fast-paced, high-energy show that’s unlike anything you’ve ever experienced. With two pianos and two performers, it’s non-stop, totally wild fun. The music is based entirely on audience requests, so every night is different—but no matter what, an amazing sing-along, laugh-along, dance-along night is always guaranteed.');

INSERT INTO locations (name, streetAddy, city, state, zip, photo, description)
VALUES ('Punch Bowl Social Cleveland', '1086 W 11th St', 'Cleveland', 'OH', '44113', 'punchbowl', 'Punch Bowl Social cultivates an eclectic approach to the new concept of eat-ertainment. In a design-forward environment described as "dirty modern," Punch Bowl Social effectively combines a diner-inspired scratch-kitchen, craft beverages, and classic parlor-style entertainment that will turn your date night into a shuffleboard showdown and your bowling buds into chicken ''n'' waffle connoisseurs. #HeresToGoingOutRight');


COMMIT TRANSACTION;