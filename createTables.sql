CREATE TABLE contractors (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  addressStreet VARCHAR(50),
  addressCity VARCHAR(50),
  addressState VARCHAR(50),
  phoneNumber INTEGER NOT NULL,
  email VARCHAR(50),
  onboardDate DATE NOT NULL,
  birthDate DATE,
  vehicle BOOLEAN,
  erContactName VARCHAR(50),
  erContactPhone INTEGER,
  socialSecurity INTEGER
);

CREATE TABLE teamLeads (
  id SERIAL PRIMARY KEY,
  contractor_id INTEGER REFERENCES contractors(id),
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  teamLead_id INTEGER REFERENCES teamLeads(id),
  contractor_id INTEGER REFERENCES contractors(id)
);
