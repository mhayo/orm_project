DROP TABLE IF EXISTS Cart_Item;
DROP TABLE IF EXISTS Order_Item;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS CART;
DROP TABLE IF EXISTS UserOrder;
DROP TABLE IF EXISTS Customer;

CREATE TABLE IF NOT EXISTS Customer
(
    id          BIGINT       NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username    VARCHAR(255) NOT NULL UNIQUE,
    name        VARCHAR(255) NOT NULL,
    surname     VARCHAR(255) NOT NULL,
    birthday    DATE,
    country     VARCHAR(255),
    zipcode     VARCHAR(20),
    city        VARCHAR(255),
    street      VARCHAR(255),
    housenumber INT
);
CREATE TABLE IF NOT EXISTS Item
(
    id          BIGINT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    price       DECIMAL(10, 2) NOT NULL
);
CREATE TABLE IF NOT EXISTS Cart
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT,
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);
CREATE TABLE IF NOT EXISTS UserOrder
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT,
    sum         DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer (id)
);

CREATE TABLE IF NOT EXISTS Cart_Item
(
    cart_id BIGINT,
    item_id BIGINT,
    PRIMARY KEY (cart_id, item_id),
    FOREIGN KEY (cart_id) REFERENCES Cart (id),
    FOREIGN KEY (item_id) REFERENCES Item (id)
);
CREATE TABLE IF NOT EXISTS Order_Item
(
    order_id BIGINT,
    item_id  BIGINT,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES UserOrder (id),
    FOREIGN KEY (item_id) REFERENCES Item (id)
);

/* create sample Data */
/* create sample Data */
INSERT INTO Item (description, price)
VALUES ('Sparkling Sapphire Earrings', 89.99),
       ('Luminous Moonstone Necklace', 129.95),
       ('Golden Sunflower Ring', 49.50),
       ('Crimson Velvet Choker', 34.99),
       ('Midnight Star Stud Earrings', 19.95),
       ('Glistening Diamond Bracelet', 149.50),
       ('Ocean Breeze Anklet', 24.99),
       ('Radiant Rose Gold Watch', 189.95),
       ('Moonlit Pearl Hairpin', 14.50),
       ('Enchanted Garden Brooch', 79.99),
       ('Whispering Willow Necklace', 89.95),
       ('Eternal Flame Pendant', 59.50),
       ('Crystal Clear Hoop Earrings', 39.99),
       ('Vintage Lace Cuff Bracelet', 69.95),
       ('Twinkling Starry Headband', 19.50),
       ('Mystic Amethyst Necklace', 109.99),
       ('Aurora Borealis Drop Earrings', 79.95),
       ('Emerald Enchantment Ring', 99.50),
       ('Ocean Serenity Bracelet', 54.99),
       ('Cherry Blossom Stud Earrings', 29.95),
       ('Whimsical Butterfly Pendant', 44.50),
       ('Moonlit Ocean Pendant', 39.99),
       ('Silver Linings Bracelet', 29.95),
       ('Sapphire Dream Earrings', 99.50),
       ('Amber Sunset Ring', 44.99),
       ('Crystal Cascade Necklace', 119.95),
       ('Golden Hour Bangle', 59.50),
       ('Starry Night Hairpin', 24.99),
       ('Rose Quartz Love Bracelet', 34.95),
       ('Dazzling Dewdrop Earrings', 69.50),
       ('Emerald Enchantment Necklace', 129.99),
       ('Enchanted Forest Ring', 39.95),
       ('Aqua Marine Delight Pendant', 49.50),
       ('Crystal Crown Tiara', 89.99),
       ('Twilight Star Stud Earrings', 19.95),
       ('Radiant Orchid Bracelet', 149.50),
       ('Golden Sunset Anklet', 29.99),
       ('Pearlescent Whisper Watch', 189.95),
       ('Gilded Rose Hairpin', 14.50),
       ('Moonstone Serenity Pendant', 69.99),
       ('Cerulean Seascape Earrings', 79.95),
       ('Sun-kissed Coral Necklace', 109.95),
       ('Opal Ocean Wave Ring', 59.50),
       ('Crystal Cascade Anklet', 19.99),
       ('Golden Radiance Watch', 179.95),
       ('Moonlit Garden Brooch', 12.50),
       ('Amethyst Star Earrings', 89.99),
       ('Lavender Lace Bracelet', 29.95),
       ('Dewdrop Delight Necklace', 139.50),
       ('Silver Stardust Ring', 49.99),
       ('Azure Dreams Bracelet', 39.95),
       ('Emerald Enchantment Hairpin', 24.50),
       ('Crimson Sunset Pendant', 74.99),
       ('Starlit Sky Stud Earrings', 14.95),
       ('Enchanted Pearl Bracelet', 109.50),
       ('Golden Rose Necklace', 89.99),
       ('Whispering Willow Ring', 49.95),
       ('Crystal Cascade Anklet', 24.50),
       ('Moonlit Ocean Watch', 149.99),
       ('Luminous Opal Hairpin', 9.95),
       ('Amber Autumn Earrings', 79.50),
       ('Mystical Topaz Earrings', 89.20),
       ('Sunrise Garnet Necklace', 110.95),
       ('Twilight Turquoise Ring', 59.70),
       ('Ethereal Emerald Choker', 45.99),
       ('Stellar Ruby Stud Earrings', 29.95),
       ('Glowing Garnet Bracelet', 139.50),
       ('Breezy Blue Topaz Anklet', 34.99),
       ('Elegant Ebony Watch', 199.95),
       ('Sunset Sapphire Hairpin', 16.50),
       ('Whimsical Windflower Brooch', 85.99),
       ('Rustic Ruby Necklace', 95.95),
       ('Glistening Garnet Pendant', 65.50),
       ('Majestic Moonstone Hoop Earrings', 42.99),
       ('Vintage Violet Cuff Bracelet', 75.95),
       ('Galactic Garnet Headband', 21.50),
       ('Royal Ruby Necklace', 115.99),
       ('Astral Amethyst Drop Earrings', 82.95),
       ('Dazzling Diamond Ring', 105.50),
       ('Serenity Sapphire Bracelet', 64.99),
       ('Charming Citrine Stud Earrings', 32.95),
       ('Wonderful Willow Pendant', 48.50),
       ('Mystical Moonstone Pendant', 42.99),
       ('Lustrous Lapis Lazuli Bracelet', 35.95),
       ('Starry Sapphire Earrings', 105.50),
       ('Aurora Amethyst Ring', 48.99),
       ('Celestial Citrine Necklace', 125.95),
       ('Golden Garnet Bangle', 65.50),
       ('Dreamy Diamond Hairpin', 28.99),
       ('Radiant Ruby Love Bracelet', 38.95),
       ('Dewy Diamond Earrings', 75.50),
       ('Ethereal Emerald Necklace', 135.99),
       ('Forest Fern Ring', 42.95),
       ('Azure Amethyst Pendant', 53.50),
       ('Crown Jewel Tiara', 95.99),
       ('Twinkling Topaz Stud Earrings', 21.95),
       ('Orchid Opal Bracelet', 155.50),
       ('Sunny Sapphire Anklet', 32.99),
       ('Pristine Pearl Watch', 195.95),
       ('Glorious Garnet Hairpin', 18.50),
       ('Serenity Sapphire Pendant', 75.99),
       ('Cool Coral Earrings', 85.95),
       ('Sunny Sunstone Necklace', 115.95),
       ('Oceanic Opal Ring', 65.50),
       ('Cascade Citrine Anklet', 23.99),
       ('Radiant Ruby Watch', 185.95),
       ('Garden Garnet Brooch', 15.50),
       ('Amethyst Aster Earrings', 95.99),
       ('Lilac Lapis Lazuli Bracelet', 32.95),
       ('Dewdrop Diamond Necklace', 145.50),
       ('Stardust Sapphire Ring', 55.99),
       ('Dreamy Diamond Bracelet', 45.95),
       ('Elegant Emerald Hairpin', 28.50),
       ('Crimson Citrine Pendant', 78.99),
       ('Sky Sapphire Stud Earrings', 18.95),
       ('Pearl Perfection Bracelet', 115.50),
       ('Rose Ruby Necklace', 95.99),
       ('Willow Wind Ring', 55.95),
       ('Cascade Citrine Anklet', 28.50),
       ('Oceanic Opal Watch', 155.99),
       ('Lustrous Lapis Lazuli Hairpin', 12.95),
       ('Autumn Amethyst Earrings', 85.50),
       ('Breezy Blue Topaz Necklace', 110.95),
       ('Twilight Turquoise Ring', 59.70),
       ('Ethereal Emerald Choker', 45.99),
       ('Stellar Ruby Stud Earrings', 29.95),
       ('Glowing Garnet Bracelet', 139.50),
       ('Breezy Blue Topaz Anklet', 34.99),
       ('Elegant Ebony Watch', 199.95),
       ('Sunset Sapphire Hairpin', 16.50),
       ('Whimsical Windflower Brooch', 85.99),
       ('Rustic Ruby Necklace', 95.95),
       ('Glistening Garnet Pendant', 65.50),
       ('Majestic Moonstone Hoop Earrings', 42.99),
       ('Vintage Violet Cuff Bracelet', 75.95),
       ('Galactic Garnet Headband', 21.50),
       ('Royal Ruby Necklace', 115.99),
       ('Astral Amethyst Drop Earrings', 82.95),
       ('Dazzling Diamond Ring', 105.50),
       ('Serenity Sapphire Bracelet', 64.99),
       ('Charming Citrine Stud Earrings', 32.95),
       ('Wonderful Willow Pendant', 48.50),
       ('Mystical Moonstone Pendant', 42.99),
       ('Lustrous Lapis Lazuli Bracelet', 35.95),
       ('Starry Sapphire Earrings', 105.50),
       ('Aurora Amethyst Ring', 48.99),
       ('Celestial Citrine Necklace', 125.95),
       ('Golden Garnet Bangle', 65.50),
       ('Dreamy Diamond Hairpin', 28.99),
       ('Radiant Ruby Love Bracelet', 38.95),
       ('Dewy Diamond Earrings', 75.50),
       ('Ethereal Emerald Necklace', 135.99),
       ('Forest Fern Ring', 42.95),
       ('Azure Amethyst Pendant', 53.50),

       ('Majestic Malachite Earrings', 92.20),
       ('Sunlit Spinel Necklace', 112.95),
       ('Tropical Tanzanite Ring', 62.70),
       ('Elegant Ebony Choker', 47.99),
       ('Stunning Sapphire Stud Earrings', 31.95),
       ('Graceful Garnet Bracelet', 142.50),
       ('Blossoming Blue Zircon Anklet', 37.99),
       ('Exquisite Emerald Watch', 202.95),
       ('Sundown Spinel Hairpin', 17.50),
       ('Whirling Windflower Brooch', 88.99),
       ('Regal Rhodolite Necklace', 98.95),
       ('Glorious Garnet Pendant', 68.50),
       ('Magnificent Moonstone Hoop Earrings', 44.99),
       ('Victorian Violet Cuff Bracelet', 78.95),
       ('Galaxy Garnet Headband', 23.50),
       ('Regal Rhodolite Necklace', 118.99),
       ('Aurora Aquamarine Drop Earrings', 85.95),
       ('Dainty Diamond Ring', 108.50),
       ('Serene Sapphire Bracelet', 67.99),
       ('Chic Citrine Stud Earrings', 35.95),
       ('Wondrous Willow Pendant', 51.50),
       ('Mystic Moonstone Pendant', 45.99),
       ('Luminous Lapis Lazuli Bracelet', 38.95),
       ('Stellar Spinel Earrings', 108.50),
       ('Astral Amethyst Ring', 51.99),
       ('Celestial Citrine Necklace', 128.95),
       ('Gleaming Gold Bangle', 68.50),
       ('Dewdrop Diamond Hairpin', 31.99),
       ('Radiant Rhodolite Love Bracelet', 41.95),
       ('Dazzling Diamond Earrings', 78.50),
       ('Ethereal Emerald Necklace', 138.99),
       ('Fancy Fire Opal Ring', 45.95),
       ('Azure Aquamarine Pendant', 56.50),
       ('Crown Crystal Tiara', 98.99),
       ('Twinkling Tanzanite Stud Earrings', 24.95),
       ('Ornate Opal Bracelet', 158.50),
       ('Sunny Spinel Anklet', 35.99),
       ('Prestige Pearl Watch', 198.95),
       ('Glorious Garnet Hairpin', 19.50),
       ('Sapphire Serenity Pendant', 78.99),
       ('Cool Coral Earrings', 88.95),
       ('Sunny Sunstone Necklace', 118.95),
       ('Oceanic Onyx Ring', 68.50),
       ('Cascade Citrine Anklet', 26.99),
       ('Radiant Rhodolite Watch', 188.95),
       ('Garden Garnet Brooch', 18.50),
       ('Amethyst Aster Earrings', 98.99),
       ('Lilac Lapis Lazuli Bracelet', 35.95),
       ('Dewdrop Diamond Necklace', 148.50),
       ('Stardust Spinel Ring', 58.99),
       ('Dreamy Diamond Bracelet', 48.95),
       ('Elegant Emerald Hairpin', 31.50),
       ('Crimson Citrine Pendant', 81.99),
       ('Sky Sapphire Stud Earrings', 21.95),
       ('Pearl Perfection Bracelet', 118.50),
       ('Rose Rhodolite Necklace', 98.99),
       ('Willow Wind Ring', 58.95),
       ('Cascade Citrine Anklet', 31.50),
       ('Oceanic Opal Watch', 158.99),
       ('Lustrous Lapis Lazuli Hairpin', 15.95),
       ('Autumn Amethyst Earrings', 88.50),
       ('Breezy Blue Zircon Necklace', 113.95),
       ('Tropical Tanzanite Ring', 63.70),
       ('Elegant Ebony Choker', 48.99),
       ('Stunning Sapphire Stud Earrings', 32.95),
       ('Graceful Garnet Bracelet', 143.50),
       ('Blossoming Blue Zircon Anklet', 38.99),
       ('Exquisite Emerald Watch', 203.95),
       ('Sundown Spinel Hairpin', 18.50),
       ('Whirling Windflower Brooch', 89.99),
       ('Regal Rhodolite Necklace', 99.95),
       ('Glorious Garnet Pendant', 69.50),
       ('Magnificent Moonstone Hoop Earrings', 45.99),
       ('Victorian Violet Cuff Bracelet', 79.95),
       ('Galaxy Garnet Headband', 24.50),
       ('Regal Rhodolite Necklace', 119.99),
       ('Aurora Aquamarine Drop Earrings', 86.95),
       ('Dainty Diamond Ring', 109.50),
       ('Serene Sapphire Bracelet', 68.99),
       ('Chic Citrine Stud Earrings', 36.95),
       ('Wondrous Willow Pendant', 52.50),
       ('Mystic Moonstone Pendant', 46.99),
       ('Luminous Lapis Lazuli Bracelet', 39.95),
       ('Stellar Spinel Earrings', 109.50),
       ('Astral Amethyst Ring', 52.99),
       ('Celestial Citrine Necklace', 129.95),
       ('Gleaming Gold Bangle', 69.50),
       ('Dewdrop Diamond Hairpin', 32.99);


/*sample data customer */
INSERT INTO Customer (username, name, surname, birthday, country, zipcode, city, street, housenumber)
VALUES ('SophiaJohnson', 'Sophia', 'Johnson', '1986-02-15', 'USA', '12345', 'New York', 'Main Street', 5051),
       ('JacksonSmith', 'Jackson', 'Smith', '1992-11-08', 'Canada', 'M5H 3R3', 'Toronto', 'Queen Street', 5253),
       ('OliviaGarcia', 'Olivia', 'Garcia', '1998-07-25', 'Spain', '08001', 'Barcelona', 'Passeig de Gracia', 5455),
       ('LiamRodriguez', 'Liam', 'Rodriguez', '2003-04-17', 'Mexico', '11550', 'Mexico City', 'Reforma Avenue', 5657),
       ('EmmaMartinez', 'Emma', 'Martinez', '1997-10-05', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard', 5859),
       ('OliverLopez', 'Oliver', 'Lopez', '1990-08-30', 'Canada', 'V6A 1E1', 'Vancouver', 'Granville Street', 6061),
       ('AvaBrown', 'Ava', 'Brown', '1985-06-21', 'Australia', '2000', 'Sydney', 'George Street', 6263),
       ('NoahSmith', 'Noah', 'Smith', '1995-03-12', 'UK', 'SW1A 1AA', 'London', 'Buckingham Palace Road', 6465),
       ('SophiaLopez', 'Sophia', 'Lopez', '1991-01-23', 'USA', '60601', 'Chicago', 'Michigan Avenue', 6667),
       ('OliviaGarcia2', 'Olivia', 'Garcia', '2000-12-14', 'Canada', 'H2B 2C3', 'Montreal', 'Sainte-Catherine Street',
        6869),
       ('LucasNguyen', 'Lucas', 'Nguyen', '1994-09-23', 'Vietnam', '70000', 'Hanoi', 'Hoan Kiem Lake Road', 7071),
       ('EmilySmith', 'Emily', 'Smith', '1989-05-18', 'USA', '30301', 'Atlanta', 'Peachtree Street', 7273),
       ('WilliamHarris', 'William', 'Harris', '1998-03-07', 'Canada', 'M5H 3R3', 'Toronto', 'Bay Street', 7475),
       ('EmmaRodriguez', 'Emma', 'Rodriguez', '1997-01-30', 'Australia', '2000', 'Sydney', 'Circular Quay', 7677),
       ('SophiaPerez', 'Sophia', 'Perez', '2002-06-22', 'Spain', '08001', 'Barcelona', 'La Rambla', 7879),
       ('OliverHernandez', 'Oliver', 'Hernandez', '1996-11-10', 'Mexico', '11550', 'Mexico City', 'Polanco Avenue',
        8081),
       ('AvaSmith2', 'Ava', 'Smith', '1993-09-04', 'USA', '60601', 'Chicago', 'State Street', 8283),
       ('NoahMartinez2', 'Noah', 'Martinez', '2001-04-14', 'Canada', 'V6A 1E1', 'Vancouver', 'Robson Street', 8485),
       ('IsabellaHernandez', 'Isabella', 'Hernandez', '1990-10-27', 'Mexico', '45050', 'Guadalajara', 'Americas Avenue',
        8687),
       ('JacksonGarcia', 'Jackson', 'Garcia', '1999-07-20', 'Spain', '08001', 'Barcelona', 'Plaça de Catalunya', 8889),
       ('SophiaBrown2', 'Sophia', 'Brown', '1993-12-03', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard', 9091),
       ('OliverSmith2', 'Oliver', 'Smith', '1986-08-12', 'Canada', 'M5H 3R3', 'Toronto', 'Queen Street', 9293),
       ('EmmaGarcia2', 'Emma', 'Garcia', '1992-02-25', 'Spain', '08001', 'Barcelona', 'Passeig de Gracia', 9495),
       ('LiamRodriguez2', 'Liam', 'Rodriguez', '1998-07-17', 'Mexico', '11550', 'Mexico City', 'Reforma Avenue', 9697),
       ('AvaMartinez2', 'Ava', 'Martinez', '1997-05-10', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard', 9899),
       ('NoahLopez2', 'Noah', 'Lopez', '1993-09-08', 'Canada', 'V6A 1E1', 'Vancouver', 'Granville Street', 100101),
       ('IsabellaBrown2', 'Isabella', 'Brown', '1991-04-21', 'Australia', '2000', 'Sydney', 'George Street', 102103),
       ('JacksonJohnson', 'Jackson', 'Johnson', '2000-03-14', 'UK', 'SW1A 1AA', 'London', 'Buckingham Palace Road',
        104105),
       ('SophiaGarcia2', 'Sophia', 'Garcia', '1995-11-27', 'USA', '60601', 'Chicago', 'Michigan Avenue', 106107),
       ('OliverSmith3', 'Oliver', 'Smith', '1990-12-30', 'Canada', 'H2B 2C3', 'Montreal', 'Sainte-Catherine Street',
        108109),
       ('EmmaHarris2', 'Emma', 'Harris', '1988-09-03', 'Vietnam', '70000', 'Hanoi', 'Hoan Kiem Lake Road', 110111),
       ('LucasBrown2', 'Lucas', 'Brown', '1998-07-16', 'USA', '30301', 'Atlanta', 'Peachtree Street', 112113),
       ('OliviaRodriguez2', 'Olivia', 'Rodriguez', '2002-01-29', 'Canada', 'M5H 3R3', 'Toronto', 'Bay Street', 114115),
       ('SophiaMorgan', 'Sophia', 'Morgan', '1989-05-15', 'USA', '12345', 'New York', 'Main Street', 116117),
       ('EthanJohnson', 'Ethan', 'Johnson', '1995-09-10', 'Canada', 'M5H 3R3', 'Toronto', 'Queen Street', 118119),
       ('AvaWilliams', 'Ava', 'Williams', '1990-02-20', 'Australia', '2000', 'Sydney', 'George Street', 120121),
       ('LiamBrown', 'Liam', 'Brown', '1998-07-25', 'Spain', '08001', 'Barcelona', 'Passeig de Gracia', 122123),
       ('EmmaDavis', 'Emma', 'Davis', '2003-04-17', 'Mexico', '11550', 'Mexico City', 'Reforma Avenue', 124125),
       ('OliverMiller', 'Oliver', 'Miller', '1997-10-05', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard', 126127),
       ('SophiaMartinez', 'Sophia', 'Martinez', '1995-06-21', 'Canada', 'V6A 1E1', 'Vancouver', 'Granville Street',
        128129),
       ('JacksonSmith2', 'Jackson', 'Smith', '1985-03-12', 'UK', 'SW1A 1AA', 'London', 'Buckingham Palace Road',
        130131),
       ('IsabellaGarcia', 'Isabella', 'Garcia', '1991-01-23', 'USA', '60601', 'Chicago', 'Michigan Avenue', 132133),
       ('NoahMartinez3', 'Noah', 'Martinez', '2000-12-14', 'Canada', 'H2B 2C3', 'Montreal', 'Sainte-Catherine Street',
        134135),
       ('EmilyBrown', 'Emily', 'Brown', '1993-09-23', 'Vietnam', '70000', 'Hanoi', 'Hoan Kiem Lake Road', 136137),
       ('WilliamWilson', 'William', 'Wilson', '1987-05-18', 'USA', '30301', 'Atlanta', 'Peachtree Street', 138139),
       ('OliviaLopez', 'Olivia', 'Lopez', '1994-03-07', 'Canada', 'M5H 3R3', 'Toronto', 'Bay Street', 140141),
       ('SophiaHarris', 'Sophia', 'Harris', '1992-01-30', 'Australia', '2000', 'Sydney', 'Circular Quay', 142143),
       ('LucasDavis', 'Lucas', 'Davis', '2002-06-22', 'Spain', '08001', 'Barcelona', 'La Rambla', 144145),
       ('EmmaSmith2', 'Emma', 'Smith', '1998-11-10', 'Mexico', '11550', 'Mexico City', 'Polanco Avenue', 146147),
       ('AvaBrown2', 'Ava', 'Brown', '1997-09-04', 'USA', '60601', 'Chicago', 'State Street', 148149),
       ('NoahJohnson', 'Noah', 'Johnson', '1991-04-14', 'Canada', 'V6A 1E1', 'Vancouver', 'Robson Street', 150151),
       ('IsabellaMiller', 'Isabella', 'Miller', '1988-10-27', 'Mexico', '45050', 'Guadalajara', 'Americas Avenue',
        152153),
       ('JacksonMartinez', 'Jackson', 'Martinez', '1996-07-20', 'Spain', '08001', 'Barcelona', 'Plaça de Catalunya',
        154155),
       ('SophiaThompson', 'Sophia', 'Thompson', '1990-12-03', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard',
        156157),
       ('OliverWhite', 'Oliver', 'White', '1999-11-03', 'Canada', 'M5H 3R3', 'Toronto', 'Queen Street', 158159),
       ('EmmaLee', 'Emma', 'Lee', '1994-05-20', 'Australia', '2000', 'Sydney', 'George Street', 160161),
       ('LiamHarris2', 'Liam', 'Harris', '1993-08-12', 'UK', 'SW1A 1AA', 'London', 'Buckingham Palace Road', 162163),
       ('OliviaWalker', 'Olivia', 'Walker', '1996-11-27', 'USA', '60601', 'Chicago', 'Michigan Avenue', 164165),
       ('SophiaGarcia3', 'Sophia', 'Garcia', '1995-10-30', 'Canada', 'H2B 2C3', 'Montreal', 'Sainte-Catherine Street',
        166167),
       ('JacksonSmith3', 'Jackson', 'Smith', '1990-03-03', 'Vietnam', '70000', 'Hanoi', 'Hoan Kiem Lake Road', 168169),
       ('OliverMartin', 'Oliver', 'Martin', '2002-07-16', 'USA', '30301', 'Atlanta', 'Peachtree Street', 170171),
       ('EmmaThompson', 'Emma', 'Thompson', '1998-02-25', 'Canada', 'M5H 3R3', 'Toronto', 'Bay Street', 172173),
       ('SophiaWilliams2', 'Sophia', 'Williams', '1993-06-22', 'Australia', '2000', 'Sydney', 'Circular Quay', 174175),
       ('LiamDavis2', 'Liam', 'Davis', '1989-10-05', 'Spain', '08001', 'Barcelona', 'La Rambla', 176177),
       ('OliviaJohnson', 'Olivia', 'Johnson', '1997-05-08', 'Mexico', '11550', 'Mexico City', 'Polanco Avenue', 178179),
       ('AvaSmith3', 'Ava', 'Smith', '1995-01-12', 'USA', '60601', 'Chicago', 'State Street', 180181),
       ('NoahClark', 'Noah', 'Clark', '2000-08-22', 'Canada', 'V6A 1E1', 'Vancouver', 'Robson Street', 182183),
       ('IsabellaWilson2', 'Isabella', 'Wilson', '1994-03-10', 'Spain', '08001', 'Barcelona', 'Passeig de Gracia',
        184185),
       ('JacksonMiller', 'Jackson', 'Miller', '1987-09-01', 'USA', '90210', 'Beverly Hills', 'Sunset Boulevard',
        186187),
       ('SophiaSmith3', 'Sophia', 'Smith', '1992-12-15', 'Canada', 'M5H 3R3', 'Toronto', 'Queen Street', 188189),
       ('OliverHarris3', 'Oliver', 'Harris', '2001-01-26', 'Australia', '2000', 'Sydney', 'George Street', 190191),
       ('EmmaBrown2', 'Emma', 'Brown', '1998-06-18', 'UK', 'SW1A 1AA', 'London', 'Buckingham Palace Road', 192193),
       ('LiamGarcia', 'Liam', 'Garcia', '1995-09-03', 'USA', '60601', 'Chicago', 'Michigan Avenue', 194195),
       ('AvaMartinez3', 'Ava', 'Martinez', '1990-11-14', 'Canada', 'H2B 2C3', 'Montreal', 'Sainte-Catherine Street',
        196197),
       ('NoahMoore', 'Noah', 'Moore', '1996-02-27', 'Vietnam', '70000', 'Hanoi', 'Hoan Kiem Lake Road', 198199),
       ('IsabellaAdams', 'Isabella', 'Adams', '2002-07-09', 'USA', '30301', 'Atlanta', 'Peachtree Street', 200201),
       ('AnnaMuller', 'Anna', 'Muller', '1995-05-10', 'Germany', '10115', 'Berlin', 'Unter den Linden', 202),
       ('MaxSchmidt', 'Max', 'Schmidt', '1990-03-15', 'Germany', '80331', 'Munich', 'Marienplatz', 203),
       ('MarieSchneider', 'Marie', 'Schneider', '1988-09-20', 'Germany', '50667', 'Cologne', 'Schildergasse', 204),
       ('PaulFischer', 'Paul', 'Fischer', '1992-12-05', 'Germany', '20095', 'Hamburg', 'Mönckebergstraße', 205),
       ('LauraWeber', 'Laura', 'Weber', '1994-07-30', 'Germany', '70173', 'Stuttgart', 'Königstraße', 206);



INSERT INTO CART (customer_id)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (1),
       (2),
       (3),
       (4),
       (5),
       (1),
       (2),
       (3),
       (4),
       (5),
       (1),
       (2),
       (3),
       (4),
       (5),
       (10),
       (11),
       (12),
       (13),
       (14);
INSERT INTO Cart_Item (item_id, cart_id)
VALUES (5, 1),
       (5, 2),
       (6, 3),
       (6, 4),
       (7, 5),
       (7, 1),
       (8, 2),
       (8, 3),
       (9, 4),
       (9, 5),
       (10, 1),
       (10, 2),
       (11, 3),
       (11, 4),
       (12, 5),
       (12, 1),
       (13, 2),
       (13, 3),
       (14, 4),
       (14, 5),
       (15, 1),
       (15, 2),
       (16, 3),
       (16, 4),
       (17, 5),
       (17, 1),
       (18, 2),
       (18, 3),
       (19, 4),
       (19, 5),
       (20, 1),
       (20, 2),
       (21, 3),
       (21, 4),
       (22, 5),
       (22, 1),
       (23, 2),
       (23, 3),
       (24, 4),
       (24, 5),
       (25, 1),
       (26, 2),
       (27, 3);

INSERT INTO UserOrder(customer_id, sum)
VALUES (1, 300.00),
       (2, 150.00),
       (3, 200.00),
       (4, 250.00),
       (5, 100.00),
       (1, 350.00),
       (2, 150.00),
       (3, 200.00),
       (4, 250.00),
       (5, 300.00),
       (1, 150.00),
       (2, 200.00),
       (3, 250.00),
       (4, 300.00),
       (5, 350.00),
       (1, 400.00),
       (2, 450.00),
       (3, 500.00),
       (4, 550.00),
       (5, 600.00),
       (15, 250.00);

INSERT INTO Order_Item(item_id, order_id)
VALUES (3, 1),
       (3, 2),
       (4, 3),
       (4, 4),
       (5, 5),
       (5, 1),
       (6, 2),
       (6, 3),
       (7, 4),
       (7, 5),
       (8, 1),
       (8, 2),
       (9, 3),
       (9, 4),
       (10, 5),
       (10, 1),
       (11, 2),
       (11, 3),
       (12, 4),
       (12, 5),
       (13, 1),
       (13, 2),
       (14, 3),
       (14, 4),
       (15, 5),
       (15, 1),
       (16, 2),
       (16, 3),
       (17, 4),
       (17, 5),
       (18, 1),
       (18, 2),
       (19, 3),
       (19, 4),
       (20, 5),
       (20, 1),
       (21, 2),
       (21, 3),
       (22, 4),
       (22, 5),
       (23, 16),
       (24, 17),
       (25, 18);
