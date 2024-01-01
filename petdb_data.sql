CREATE TABLE `Member` (
	`Member_ID`	VARCHAR(255)	NOT NULL,
	`Member_PW`	VARCHAR(255)	NULL,
	`Member_name`	VARCHAR(255)	NULL,
	`Member_address`	VARCHAR(255)	NULL,
	`Member_call`	VARCHAR(255)	NULL,
	`Admin_code`	VARCHAR(255)	NULL,
	`Member_email`	VARCHAR(255)	NULL,
	`Member_nick`	VARCHAR(255)	NULL,
	`Member_day`	VARCHAR(255)	NULL
);

CREATE TABLE `Type` (
	`memberType_code`	VARCHAR(255)	NOT NULL,
	`Type_info`	VARCHAR(255)	NULL
);

CREATE TABLE `Review` (
	`Review_code`	VARCHAR(255)	NOT NULL,
	`Review_star`	VARCHAR(255)	NULL,
	`Review_content`	VARCHAR(255)	NULL,
	`Review_updown`	VARCHAR(255)	NULL,
	`Review_day`	VARCHAR(255)	NULL,
	`Info_code`	VARCHAR(255)	NOT NULL,
	`Member_ID`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `Comment` (
	`Comment_code`	VARCHAR(255)	NOT NULL,
	`Comment_content`	VARCHAR(255)	NULL,
	`Review_code`	VARCHAR(255)	NOT NULL,
	`Member_ID`	VARCHAR(255)	NOT NULL,
	`Share_code`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `Information` (
	`Info_code`	VARCHAR(255)	NOT NULL,
	`Info_name`	VARCHAR(255)	NULL,
	`Info_address`	VARCHAR(255)	NULL,
	`Info_call`	VARCHAR(255)	NULL,
	`Info_special`	VARCHAR(255)	NULL,
	`Info_day`	VARCHAR(255)	NULL,
	`Type_code`	VARCHAR(255)	NOT NULL,
	`Member_ID`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `Share` (
	`Share_code`	VARCHAR(255)	NOT NULL,
	`Share_name`	VARCHAR(255)	NULL,
	`Share_content`	VARCHAR(255)	NULL,
	`Share_picture`	VARCHAR(255)	NULL,
	`Member_ID`	VARCHAR(255)	NOT NULL
);

ALTER TABLE `Member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`Member_ID`
);

ALTER TABLE `Type` ADD CONSTRAINT `PK_TYPE` PRIMARY KEY (
	`Type_code`
);

ALTER TABLE `Review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`Review_code`
);

ALTER TABLE `Comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
	`Comment_code`
);

ALTER TABLE `Information` ADD CONSTRAINT `PK_INFORMATION` PRIMARY KEY (
	`Info_code`
);

ALTER TABLE `S`share`hare` ADD CONSTRAINT `PK_UNTITLED4` PRIMARY KEY (
	`Share_code`
);

