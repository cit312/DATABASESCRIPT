/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS app;
USE app;
DROP TABLE IF EXISTS pivots;
CREATE TABLE pivots (
pivot_id 		int(11) NOT NULL AUTO_INCREMENT,
pivot_name 		char(20) NOT NULL,
pivot_notes		varchar(5000),
-- pivot_degrees 	int (3),
-- pivot_direction char(20),
-- pivot_status 	char(3),
PRIMARY KEY (pivot_id)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS app_users;
CREATE TABLE app_users (
user_id int(11) NOT NULL AUTO_INCREMENT,
uname char(20) NOT NULL,
uphone int(10) NOT NULL,
PRIMARY KEY (user_id)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS map;
CREATE TABLE map (
  user_id int(11) NOT NULL
, pivot_id int(11) NOT NULL
, id int(11) NOT NULL AUTO_INCREMENT
, PRIMARY KEY(id)
, KEY user_id_fk1 (user_id)
, CONSTRAINT user_id_fk1 FOREIGN KEY (user_id) REFERENCES app_users (user_id)
, KEY pivot_id_fk1 (pivot_id)
, CONSTRAINT pivot_id_fk1 FOREIGN KEY (pivot_id) REFERENCES pivots (pivot_id))
ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT INTO pivots (pivot_id, pivot_name) VALUES(NULL, "Josh");
INSERT INTO app_users VALUES(NULL, "Brayden", 2083905008);
INSERT INTO map VALUES(1, 1, NULL);

ALTER TABLE map
ADD CONSTRAINT un_map UNIQUE (user_id, pivot_id);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

