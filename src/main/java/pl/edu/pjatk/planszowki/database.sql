ALTER TABLE game
    ADD COLUMN ratingsNumber int AFTER rating;

UPDATE game
SET rating = 3.9
WHERE id = 1;
UPDATE game
SET ratingsNumber = 9640
WHERE id = 1;

UPDATE game
SET rating = 4.7
WHERE id = 2;
UPDATE game
SET ratingsNumber = 489
WHERE id = 2;

UPDATE game
SET rating = 3.2
WHERE id = 3;
UPDATE game
SET ratingsNumber = 730
WHERE id = 3;

UPDATE game
SET rating = 4.8
WHERE id = 4;
UPDATE game
SET ratingsNumber = 357
WHERE id = 4;

UPDATE game
SET rating = 4.3
WHERE id = 5;
UPDATE game
SET ratingsNumber = 2137
WHERE id = 5;

UPDATE game
SET rating = 4.5
WHERE id = 6;
UPDATE game
SET ratingsNumber = 1354
WHERE id = 6;

UPDATE game
SET rating = 4.0
WHERE id = 7;
UPDATE game
SET ratingsNumber = 277
WHERE id = 7;

UPDATE game
SET rating = 3.9
WHERE id = 8;
UPDATE game
SET ratingsNumber = 713
WHERE id = 8;

UPDATE game
SET rating = 4.8
WHERE id = 9;
UPDATE game
SET ratingsNumber = 3120
WHERE id = 9;

UPDATE game
SET rating = 4.1
WHERE id = 10;
UPDATE game
SET ratingsNumber = 998
WHERE id = 10;


