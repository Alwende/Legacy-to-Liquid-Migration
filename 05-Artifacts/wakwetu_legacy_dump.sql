-- WAKWETU GENERAL STORES - LEGACY DATA DUMP
CREATE TABLE inventory (id SERIAL PRIMARY KEY, item_name TEXT, stock_level INT, price DECIMAL);
INSERT INTO inventory (item_name, stock_level, price) VALUES ('Wakwetu Gloss White', 50, 2500.00), ('Thinners 5L', 20, 1200.00);
