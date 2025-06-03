-- Crear la base de datos
CREATE DATABASE NetflixStreaming;
GO

USE NetflixStreaming;
GO

-- Tabla principal
CREATE TABLE titles (
    show_id VARCHAR(20) PRIMARY KEY,
    type VARCHAR(20),
    title VARCHAR(MAX),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(20),
    description TEXT,
    date_added DATE
);

-- Directores
CREATE TABLE directors (
    show_id VARCHAR(20),
    director_name VARCHAR(255),
    FOREIGN KEY (show_id) REFERENCES titles(show_id)
);

-- Actores
CREATE TABLE cast_members (
    show_id VARCHAR(20),
    actor_name VARCHAR(255),
    FOREIGN KEY (show_id) REFERENCES titles(show_id)
);

-- Países
CREATE TABLE countries (
    show_id VARCHAR(20),
    country_name VARCHAR(100),
    FOREIGN KEY (show_id) REFERENCES titles(show_id)
);

-- Categorías (Géneros)
CREATE TABLE categories (
    show_id VARCHAR(20),
    category_name VARCHAR(100),
    FOREIGN KEY (show_id) REFERENCES titles(show_id)
);
