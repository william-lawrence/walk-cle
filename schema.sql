
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
	description	varchar(1500),
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
	CONSTRAINT ck_category_check CHECK (category IN ('bars', 'restaurants', 'sports', 'parks', 'shopping', 'artsculture', 'historical', 'activities', 'photoops'))
);

CREATE TABLE badges
(
	id			int			identity(1,1),
	name		varchar(50)	not null,
	description	varchar(250) not null,
	criteria	varchar(250) not null,
	image		varchar(50)

	constraint pk_badges primary key (id)
);

CREATE TABLE user_badges
(
	user_id		int			not null,
	badge_id	int			not null,
	date		date		default CAST(getdate() as date)

	constraint pk_user_badges_user_id_badge_id primary key (user_id, badge_id)
);

CREATE TABLE check_ins
(
	user_id		int			not null,
	location_id	int			not null,
	date		datetime	default getdate()

	constraint pk_check_ins_user_id_location_id primary key (user_id, location_id, date)
);

COMMIT TRANSACTION;