CREATE TABLE cars(
  vin SERIAL PRIMARY KEY,
  make VARCHAR(100),
  model VARCHAR(100),
  car_condition VARCHAR(100)
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150)
);

CREATE TABLE service_parts (
  part_id SERIAL PRIMARY KEY,
  part_name VARCHAR(100)
);

CREATE TABLE mech_dept (
  mech_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE service_tickets (
  ticket_id SERIAL PRIMARY KEY,
  service_type VARCHAR(100),
  service_date DATE,
  service_cost NUMERIC(7,2),
  vin INTEGER,
  mech_id INTEGER,
  customer_id INTEGER,
  part_id INTEGER,
  FOREIGN KEY (vin) REFERENCES cars(vin),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (mech_id) REFERENCES mech_dept(mech_id),
  FOREIGN KEY (part_id) REFERENCES service_parts(part_id)
);

CREATE table sales_dept (
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE sales_invoices (
  invoice_id SERIAL PRIMARY KEY,
  sales_amount NUMERIC(7,2),
  staff_id INTEGER,
  customer_id INTEGER,
  vin INTEGER,
  FOREIGN KEY (staff_id) REFERENCES sales_dept(staff_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (vin) REFERENCES cars(vin)
);

