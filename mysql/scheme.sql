USE rent_history;

CREATE TABLE IF NOT EXISTS `houses`(
       `house_id` INT NOT NULL AUTO_INCREMENT,
       `house_desc` VARCHAR(1000) NOT NULL,
       `house_street_1` VARCHAR(100) NOT NULL,
       `house_street_2` VARCHAR(100),
       `house_city` VARCHAR(100) NOT NULL,
       `house_state` VARCHAR(100) NOT NULL,
       `house_pincode` VARCHAR(10) NOT NULL,
       `locality_desc` VARCHAR(1000) NOT NULL,
       `locality_name` VARCHAR(50),
       `positives` VARCHAR(1000),
       `negatives` VARCHAR(1000),
       `landlord_desc` VARCHAR(1000),
       `created` TIMESTAMP DEFAULT '0000-00-00 00:00:00',
       `last_updated` TIMESTAMP default now() on update now(),

       PRIMARY KEY(`house_id`)
);


CREATE TABLE IF NOT EXISTS `users`(
       `user_id` INT NOT NULL AUTO_INCREMENT,
       `fb_user_id` INT NOT NULL,
       `fb_user_token` INT NOT NULL,
       `name` VARCHAR(100) NOT NULL,
       `email` VARCHAR(100) NOT NULL,

       PRIMARY KEY(`user_id`)
);
