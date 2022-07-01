CREATE USER IF NOT EXISTS 'catalogue_user' IDENTIFIED BY 'default_password';

GRANT ALL ON socksdb.* TO 'catalogue_user';

CREATE TABLE IF NOT EXISTS sock (
	sock_id varchar(40) NOT NULL, 
	name varchar(20), 
	description varchar(1024),
	price float, 
	count int, 
	image_url_1 varchar(40), 
	image_url_2 varchar(40), 
	PRIMARY KEY(sock_id)
);

CREATE TABLE IF NOT EXISTS tag (
	tag_id MEDIUMINT NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	PRIMARY KEY(tag_id)
);

CREATE TABLE IF NOT EXISTS sock_tag (
	sock_id varchar(40), 
	tag_id MEDIUMINT NOT NULL, 
	FOREIGN KEY (sock_id) 
		REFERENCES sock(sock_id), 
	FOREIGN KEY(tag_id)
		REFERENCES tag(tag_id)
);

INSERT INTO sock VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "Applewood", "Applewood is a traditional farmhouse Cheddar from Ilchester Cheese Company.", 17.15, 33, "/catalogue/images/applewood_1.jpeg", "/catalogue/images/applewood_2.jpeg");
INSERT INTO sock VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Cabrales", "A finished Cabrales can be characterised by its strong, penetrating aroma and sharp, acidic, slightly salty taste. It pairs well with red wine, fresh figs, salami, sweet sherry and dry sausages.", 7.99, 115, "/catalogue/images/cabrales_1.jpeg", "/catalogue/images/cabrales_2.jpeg");
INSERT INTO sock VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Cheddar", "Cheddar cheese, the most widely purchased and eaten cheese globally, is always made from cow''s milk. It is a hard cheese with a slightly crumbly texture if properly cured, and if it is too young, the texture is smooth.",  17.32, 738, "/catalogue/images/cheddar_1.jpeg", "/catalogue/images/cheddar_2.jpeg");
INSERT INTO sock VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "Camembert", "The fresh Camembert cheese is bland, hard and crumbly in texture. Young Camembert has a milky and sweet taste.",  15.00, 820, "/catalogue/images/camembert_1.jpeg", "/catalogue/images/camembert_2.jpeg");
INSERT INTO sock VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "Roquefort", "Roquefort is a popular French cheese, reported to be a favourite of Emperor Charlemagne. It is called the ''cheese of kings and popes'' in France.",  22.99, 1, "/catalogue/images/roquefort_1.jpeg", "/catalogue/images/roquefort_2.jpeg");
INSERT INTO sock VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "Brie", "Brie is the best known French cheese and has the nickname 'The Queen of Cheese'. Brie is a soft cheese named after the French region Brie, where it was originally created. Several hundred years ago, Brie was one of the tributes which had to be paid to the French kings.",  10.99, 801, "/catalogue/images/brie_1.jpeg", "/catalogue/images/brie_2.jpeg");
INSERT INTO sock VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "Manchego", "The Manchego cheese is produced in the La Mancha region of Spain, which is also home to Don Quixote.",  14, 808, "/catalogue/images/manchego_1.jpeg", "/catalogue/images/manchego_2.jpeg");
INSERT INTO sock VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Goat Nevat", "Goat Nevat or simply Nevat cheese is produced in the Barcelona region of Spain. Pasteurised goat’s milk is used while making this cheese.",  12, 127, "/catalogue/images/nevat_1.jpeg", "/catalogue/images/nevat_2.jpeg");
INSERT INTO sock VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Chesire", "Dense and crumbly, Cheshire is made using vegetarian rennet and pasteurised cow’s milk.",  18, 438, "/catalogue/images/chesire_1.jpeg", "/catalogue/images/chesire_2.jpeg");
INSERT INTO sock VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "Cottage Cheese", "Cottage cheese is a cheese curd product with a mild flavour. The curd is drained but not pressed, so some whey remains and retains moisture.",  15, 175, "/catalogue/images/cottage_1.jpeg", "/catalogue/images/cottage_2.jpeg");

INSERT INTO tag (tag_id, name) VALUES (1, "spain");
INSERT INTO tag (tag_id, name) VALUES (2, "uk");
INSERT INTO tag (tag_id, name) VALUES (3, "france");
INSERT INTO tag (tag_id, name) VALUES (4, "intense");
INSERT INTO tag (tag_id, name) VALUES (5, "hard");
INSERT INTO tag (tag_id, name) VALUES (6, "soft");
INSERT INTO tag (tag_id, name) VALUES (7, "firm");
INSERT INTO tag (tag_id, name) VALUES (8, "aged");
INSERT INTO tag (tag_id, name) VALUES (9, "goat");
INSERT INTO tag (tag_id, name) VALUES (10, "cow");
INSERT INTO tag (tag_id, name) VALUES (11, "sheep");

INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "2");
INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "10");
INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "5");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "9");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "10");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "11");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "7");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "5");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "10");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "2");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "10");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "4");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "6");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "3");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "4");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "11");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "6");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "3");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "10");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "6");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "1");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "7");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "11");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "6");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "9");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "2");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "5");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "10");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "8");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "2");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "6");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "10");




