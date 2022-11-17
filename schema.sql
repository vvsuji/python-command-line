DROP TABLE IF EXISTS info;
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE info (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  phone_number INTEGER,
  contact_id INTEGER
);
