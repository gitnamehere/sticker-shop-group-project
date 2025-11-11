INSERT INTO creator (first_name, last_name, email_address, phone_number)
VALUES ('Sticker', 'Shop', 'thestickershop@stickershop.com', '123-456-7890');

INSERT INTO creator (first_name, middle_name, last_name, email_address, phone_number, payout_method) 
VALUES ('Benillas', 'H', 'Nguyen','bennguyen123456@sticker.com', '123-456-7891', 'mastercard');

INSERT INTO customer (first_name, last_name, email_address, phone_number, street, city, postal_code) 
VALUES ('John', 'Doe', 'johndoe101@gmail.com', '987-654-3210', '123 sticker St', 'Stickerfield', '12345');

INSERT INTO sticker (creator_id, name, description, date_created)
VALUES (1, 'Square Sticker', 'A sticker that is a shape of a square.', current_date); -- use current_date https://www.postgresql.org/docs/8.2/functions-datetime.html
INSERT INTO polygonal_sticker
VALUES (1, 'square');

INSERT INTO sticker (creator_id, name, description, date_created)
VALUES (1, 'Circle Sticker', 'A sticker that is a shape of a circle.', current_date);
INSERT INTO polygonal_sticker
VALUES (2, 'circle');

INSERT INTO sticker (creator_id, name, description, date_created)
VALUES (1, 'Triangle Sticker', 'A sticker that is a shape of a triangle.', current_date);
INSERT INTO polygonal_sticker
VALUES (3, 'triangle');

INSERT INTO sticker (creator_id, name, description, date_created)
VALUES (2, 'Among Us Sticker', 'A red sussy imposter sticker that keeps you alert.', current_date);
INSERT INTO image_sticker (sticker_id, image_data)
VALUES (4, 'pretend this is an image byte data');

INSERT INTO sticker (creator_id, name, description, date_created)
VALUES (1, 'Heart Sticker', 'A sticker that is a shape of a heart.', current_date);
INSERT INTO polygonal_sticker
VALUES (5, 'heart');

INSERT INTO sticker_sizes (length, width, sticker_id)
VALUES(10, 10, 1);
INSERT INTO sticker_sizes (length, width, sticker_id)
VALUES(5, 5, 2);
INSERT INTO sticker_sizes (length, width, sticker_id)
VALUES(15, 15, 3);
INSERT INTO sticker_sizes (length, width, sticker_id)
VALUES(4, 2, 4);
INSERT INTO sticker_sizes (length, width, sticker_id)
VALUES(10, 10, 5);

-- materials based on what RedBubble has
-- https://www.redbubble.com/i/sticker/Hang-on-Let-me-overthink-this-by-chestify/29205665.EJUG5
INSERT INTO materials (material, price)
VALUES ('vinyl-glossy', 1.00);
INSERT INTO materials (material, price)
VALUES ('vinyl-matte', 0.75);
INSERT INTO materials (material, price)
VALUES ('vinyl-holographic', 1.25);

INSERT INTO colors (color)
VALUES ('red');
INSERT INTO colors (color)
VALUES ('orange');
INSERT INTO colors (color)
VALUES ('yellow');
INSERT INTO colors (color)
VALUES ('green');
INSERT INTO colors (color)
VALUES ('blue');
INSERT INTO colors (color)
VALUES ('purple');
INSERT INTO colors (color)
VALUES ('black');
INSERT INTO colors (color)
VALUES ('white');

INSERT INTO orders (customer_id)
VALUES (1);
-- glossy red square sticker
INSERT INTO sticker_material (sticker_id, material_id, color_id)
VALUES (1, 1, 1);
INSERT INTO order_items (order_id, sticker_id, sticker_material_id)
VALUES (1, 1, 1);
-- glossy red circle sticker
INSERT INTO sticker_material (sticker_id, material_id, color_id)
VALUES (2, 1, 1);
INSERT INTO order_items (order_id, sticker_id, sticker_material_id)
VALUES (1, 2, 2);

INSERT INTO orders (customer_id)
VALUES (1);
-- amongus
INSERT INTO sticker_material (sticker_id, material_id, color_id)
VALUES (4, 1, 1);
INSERT INTO order_items (order_id, sticker_id, sticker_material_id)
VALUES (2, 4, 3);

INSERT INTO payment_method (customer_id, method)
VALUES (1, 'test');
