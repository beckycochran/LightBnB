-- Use $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u. as every users password. It's the word password hashed with bcrypt.
-- For the text columns, don't worry about adding long descriptions or messages. Just use the word description or message.
-- three or more rows in each table

INSERT INTO users (id, name, email, password)
VALUES (1, 'Mary Sue', 'example1@email.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  (2, 'Billy Bob', 'example2@email.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  (3, 'Calvin Hobbes', 'example3@email.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 1, 'Bungee Bungalow', 'Bungalo, 3 bathrooms, 4 bedrooms', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.royalhomes.com%2Ftip%2Fis-a-bungalow-a-good-investment%2F&psig=AOvVaw33nB-697sobLPPqSivBase&ust=1629431110516000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCJDgvIeWvPICFQAAAAAdAAAAABAD', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.royalhomes.com%2Ftip%2Fis-a-bungalow-a-good-investment%2F&psig=AOvVaw33nB-697sobLPPqSivBase&ust=1629431110516000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCJDgvIeWvPICFQAAAAAdAAAAABAD', 100, 2, 3, 4, 'Canada', 'Main', 'Toronto', 'Ontario', 'A1A A1A', true),
  (2, 2, 'Toronto Mansion Disney Palace', 'Mansion, 5 bathrooms, 10 bedrooms', 'https://assets.blog.hgtv.ca/wp-content/uploads/2018/10/18162448/Stonebridge-Estate-Auction-ft.jpg', 'https://assets.blog.hgtv.ca/wp-content/uploads/2018/10/18162448/Stonebridge-Estate-Auction-ft.jpg' 500, 7, 5, 10, 'Canada', 'Ritzy Main', 'Toronto', 'Ontario', 'B1A A1A', true),
  (3, 3, 'Single Bedroom Dingy', 'Single Bedroom Apartment, 1 bathroom, 1 bedroom', 'https://www.google.com/search?q=single+bedroom+apartment&tbm=isch&ved=2ahUKEwiOnp72lrzyAhVeqHIEHdoVBzsQ2-cCegQIABAA&oq=single+bedroom+apartment&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgcIIxDqAhAnOgQIIxAnOgQIABBDOgcIABCxAxBDOggIABCABBCxAzoLCAAQgAQQsQMQgwE6CAgAELEDEIMBUJqPD1iOyBdg58gXaA9wAHgBgAGpAogBkiiSAQYyLjMzLjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=stQdYY79Od7QytMP2quc2AM&bih=914&biw=1166#imgrc=iFQMTHWodIaENM&imgdii=32G0a0Ls0ir6zM', 'https://www.google.com/search?q=single+bedroom+apartment&tbm=isch&ved=2ahUKEwiOnp72lrzyAhVeqHIEHdoVBzsQ2-cCegQIABAA&oq=single+bedroom+apartment&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgcIIxDqAhAnOgQIIxAnOgQIABBDOgcIABCxAxBDOggIABCABBCxAzoLCAAQgAQQsQMQgwE6CAgAELEDEIMBUJqPD1iOyBdg58gXaA9wAHgBgAGpAogBkiiSAQYyLjMzLjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=stQdYY79Od7QytMP2quc2AM&bih=914&biw=1166#imgrc=iFQMTHWodIaENM&imgdii=32G0a0Ls0ir6zM' 75, 1, 1, 1, 'Canada', 'Dingy Main', 'Toronto', 'Ontario', 'C1A A1A', true);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES (1, '2018-09-11', '2018-09-26', 1, 1),
  (2, '2019-01-04', '2019-02-01', 2, 2),
  (3, '2021-10-01', '2021-10-14', 3, 3);

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
  (1, 1, 1, 4, 'messages'),
  (1, 1, 1, 4, 'messages'),
  (1, 1, 1, 4, 'messages');