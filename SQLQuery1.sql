CREATE TABLE sales
(
	store_id INT IDENTITY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	states VARCHAR (15),
	zip_code VARCHAR (15)
)

SELECT * FROM sales

INSERT INTO sales
VALUES (1,swami, number,yesyoucan, samarth_marg, akkalkot, Maharashtra, zipcode);
