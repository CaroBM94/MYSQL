DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
SELECT * FROM creador;

insert INTO creador (id_creador, nombre) values (1, 'Marvel');
insert into creador (id_creador, nombre) values (2, 'DC_Comics');

select * from personajes;

insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (1,'Bruce Banner','Hulk', 160, '600Mil', 75, 98, 1962, 'Fisico Nuclear', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (2,'Tony Stark','Iron Man', 170, '200Mil', 70, 123, 1963, 'Inventor Industrial', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (3,'Thor Odinson','Thor', 145, 'infinita', 100, 235, 1962, 'Rey de Asgard', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (4,'Wanda Maximoff','Bruja Escarlata', 170, '100Mil', 90, 345, 1964, 'Bruja', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (5,'Carol Danvers','Capitana Marvel', 157, '250Mil', 85, 128, 1968, 'Oficial de Inteligencia', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (6,'Thanos','Thanos', 170, 'infinita', 40, 306, 1973, 'Adorador de la Muerte', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (7,'Peter Parker','SpiderMan', 165, '25Mil', 80, 74, 1962, 'Fotografo', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (8,'Steve Rogers','Capitan America', 145, '600', 45, 60, 1941, 'Oficial Federal', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (9,'Bobby Drake','Ice Man', 140, '2Mil', 64, 122, 1963, 'Contador', 1);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (10,'Barry Allen','Flash', 160, '10Mil', 120, 168, 1956, 'Cientifico Forense', 2);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (11,'Bruce Wayne','Batman', 170, '500', 32, 47, 1939, 'Hombre de Negocios', 2);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (12,'Clarck Kent','SuperMan', 165, 'infinita', 120, 182, 1948, 'Reportero', 2);
insert into personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) values (13,'Diana Prince','Mujer Maravilla', 160, 'infinita', 95, 127, 1949, 'Princesa Guerrera', 2);

UPDATE personajes
set	aparicion = 1938
where id_personaje = 12;

DELETE 
FROM personajes
where id_personaje = 10;









