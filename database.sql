CREATE DATABASE cinepick;

USE cinepick;

CREATE TABLE content (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    type ENUM('Movie', 'Series') NOT NULL,
    genre VARCHAR(50) NOT NULL,
    description TEXT,
    release_year INT,
    rating DECIMAL(2,1),
    image VARCHAR(255)
);

INSERT INTO content 
(title, type, genre, description, release_year, rating, image)
VALUES

('Avengers: Endgame', 'Movie', 'Action',
 'The Avengers come together for one final battle to save the universe.',
 2019, 8.4, 'https://via.placeholder.com/300x400?text=Avengers'),

('The Dark Knight', 'Movie', 'Action',
 'Batman faces the Joker in one of his greatest battles.',
 2008, 9.0, 'https://via.placeholder.com/300x400?text=Dark+Knight'),

('John Wick', 'Movie', 'Action',
 'A retired assassin returns to his violent past after a personal tragedy.',
 2014, 7.4, 'https://via.placeholder.com/300x400?text=John+Wick'),

('The Hangover', 'Movie', 'Comedy',
 'Three friends try to remember what happened during a crazy night in Las Vegas.',
 2009, 7.7, 'https://via.placeholder.com/300x400?text=Hangover'),

('3 Idiots', 'Movie', 'Comedy',
 'Three engineering students experience friendship, pressure and life lessons.',
 2009, 8.4, 'https://via.placeholder.com/300x400?text=3+Idiots'),

('Superbad', 'Movie', 'Comedy',
 'Two high-school friends attempt to make their final party unforgettable.',
 2007, 7.6, 'https://via.placeholder.com/300x400?text=Superbad'),

('La La Land', 'Movie', 'Romance',
 'A musician and an aspiring actress fall in love while chasing their dreams.',
 2016, 8.0, 'https://via.placeholder.com/300x400?text=La+La+Land'),

('The Notebook', 'Movie', 'Romance',
 'A timeless love story about two people from very different backgrounds.',
 2004, 7.8, 'https://via.placeholder.com/300x400?text=The+Notebook'),

('Titanic', 'Movie', 'Romance',
 'A young couple falls in love aboard the legendary Titanic.',
 1997, 7.9, 'https://via.placeholder.com/300x400?text=Titanic'),

('The Conjuring', 'Movie', 'Horror',
 'A family experiences terrifying supernatural events in their new home.',
 2013, 7.5, 'https://via.placeholder.com/300x400?text=Conjuring'),

('IT', 'Movie', 'Horror',
 'A group of children confront a terrifying supernatural entity.',
 2017, 7.3, 'https://via.placeholder.com/300x400?text=IT'),

('A Quiet Place', 'Movie', 'Horror',
 'A family must remain completely silent to survive mysterious creatures.',
 2018, 7.5, 'https://via.placeholder.com/300x400?text=Quiet+Place'),

('Inception', 'Movie', 'Thriller',
 'A skilled thief enters dreams to steal valuable secrets.',
 2010, 8.8, 'https://via.placeholder.com/300x400?text=Inception'),

('Gone Girl', 'Movie', 'Thriller',
 'A man becomes the center of attention when his wife mysteriously disappears.',
 2014, 8.1, 'https://via.placeholder.com/300x400?text=Gone+Girl'),

('Shutter Island', 'Movie', 'Thriller',
 'A detective investigates a mysterious disappearance at a remote hospital.',
 2010, 8.2, 'https://via.placeholder.com/300x400?text=Shutter+Island'),

('Stranger Things', 'Series', 'Horror',
 'A group of friends encounter strange supernatural events in their town.',
 2016, 8.6, 'https://via.placeholder.com/300x400?text=Stranger+Things'),

('The Office', 'Series', 'Comedy',
 'A hilarious look at the everyday lives of employees in a paper company.',
 2005, 9.0, 'https://via.placeholder.com/300x400?text=The+Office'),

('Breaking Bad', 'Series', 'Thriller',
 'A chemistry teacher enters the dangerous world of producing illegal drugs.',
 2008, 9.5, 'https://via.placeholder.com/300x400?text=Breaking+Bad'),

('Bridgerton', 'Series', 'Romance',
 'A young woman navigates love and society during the Regency era.',
 2020, 7.4, 'https://via.placeholder.com/300x400?text=Bridgerton'),

('The Boys', 'Series', 'Action',
 'A group attempts to stop corrupt superheroes from abusing their powers.',
 2019, 8.7, 'https://via.placeholder.com/300x400?text=The+Boys');