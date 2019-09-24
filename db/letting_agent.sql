DROP TABLE IF EXISTS property;

CREATE TABLE property (
  id SERIAL8 PRIMARY KEY,
  address VARCHAR(255),
  no_of_rooms INT2,
  value VARCHAR(255),
  build VARCHAR(255)
);
