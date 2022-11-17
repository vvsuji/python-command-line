TRUNCATE TABLE INFO;
TRUNCATE TABLE CONTACTS;

ALTER SEQUENCE info_id_seq RESTART WITH 1;
ALTER SEQUENCE contacts_id_seq RESTART WITH 1;

INSERT INTO contacts(first_name, last_name) VALUES ('Adam', 'Kaufman');
INSERT INTO contacts(first_name, last_name) VALUES ('Erin', 'Baright');
INSERT INTO contacts(first_name, last_name) VALUES ('Matthew', 'Holcombe');
INSERT INTO contacts(first_name, last_name) VALUES ('Khristopher', 'Patrick');
INSERT INTO contacts(first_name, last_name) VALUES ('Lin Lin', 'Lam');

INSERT INTO info(email, phone_number, contact_id) VALUES ('diabolicaldemon@hell.com', 696969, 1);
INSERT INTO info(email, phone_number, contact_id) VALUES ('peacefulfairy@aol.com', 420888, 2);
INSERT INTO info(email, phone_number, contact_id) VALUES ('redpanda@gym.com', 192003, 3);
INSERT INTO info(email, phone_number, contact_id) VALUES ('styleandslay@geniusrecruiting.com', 820119, 4);
INSERT INTO info(email, phone_number, contact_id) VALUES ('cssgorgeousgirl@borderradius.com', 129039, 5);