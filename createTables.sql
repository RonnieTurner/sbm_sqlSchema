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
  teamName VARCHAR(50),
  teamLead_id INTEGER REFERENCES teamLeads(id),
  contractor_id INTEGER REFERENCES contractors(id)
);

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  addressStreet VARCHAR(50) NOT NULL,
  addressCity VARCHAR(50) NOT NULL,
  addressState VARCHAR(50) NOT NULL,
  phoneNumber INTEGER NOT NULL,
  email VARCHAR(50),
  onboardDate DATE,
  marketMethod VARCHAR(50),
  frequency  VARCHAR(50),
  dayOfWeek VARCHAR(50),
  timeOfDay CHAR(2),
  bidValue INTEGER NOT NULL,
  team_id INTEGER REFERENCES teams(id)
)

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  prductName VARCHAR(50) NOT NULL,
  ProductType VARCHAR(50),
  cost INTEGER NOT NULL,
  suplier_id INTEGER REFERENCES supliers(id)
)

CREATE TABLE supliers (
  id SERIAL PRIMARY KEY,
  suplierName VARCHAR(50) NOT NULL,
  suplierUrl VARCHAR(50),
)

CREATE TABLE inventory (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES products(id),
  onHand INTEGER
)

CREATE TABLE assets (
  id SERIAL PRIMARY KEY,
  assetType VARCHAR(50),
  assetName VARCHAR(50) NOT NULL,
  cost INTEGER NOT NULL,
  purchaseDate DATE,
  serialNumber VARCHAR(50) NOT NULL,
  suplier_id INTEGER REFERENCES supliers(id),
  contractor_id INTEGER REFERENCES contractors(id)
)

CREATE TABLE marketing (
  id SERIAL PRIMARY KEY,
  marketerName VARCHAR(50) NOT NULL,
  marketerType VARCHAR(50),
  marketerUrl VARCHAR(50),

)
