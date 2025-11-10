\c sticker_shop

-- Creator sample
INSERT INTO creator (first_name, middle_name, last_name, email_address, phone_number, payout_method) VALUES ('Benillas', 'H', 'Nguyen','bennguyen123456@sticker.com', '123-456-7890', 'mastercard');

-- Customer sample
INSERT INTO customer (first_name, middle_name, last_name, email_address, phone_number, street, city, postal_code) VALUES ('John', NULL, 'Doe', 'johndoe101@gmail.com', '987-654-3210', '123 sticker St', 'Stickerfield', '12345');

-- Sticker sample
INSERT INTO sticker (creator_id, name, description, date_created) VALUES (1, 'Among us Sticker', 'A red sussy imposter that would makes you stay alaert', '2025-11-09');