--Stored function to add data into mech_dept table
create or replace function add_mech(mech_id_ INTEGER, first_name_ VARCHAR, last_name_ VARCHAR)
returns void
language plpgsql
as 
$$
begin
	insert into mech_dept(mech_id, first_name, last_name)
	VALUES(mech_id_, first_name_,last_name_);
end;
$$;


select add_mech(1,'Joe','Michael')
select add_mech(2,'Bob','Sean')


--Insert customers data 
INSERT into customers(
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	'Beyonce',
	'Carter',
	'444 Blue Ivy Way, Houston, TX 77001',
	'1111-2222-3333-4444'
);

--Stored function to add data into cars table
create or replace function add_car(make_ VARCHAR, model_ VARCHAR, car_condition_ VARCHAR)
returns void
language plpgsql
as 
$$
begin
	insert into cars(make, model, car_condition)
	VALUES(make_, model_, car_condition_);
end;
$$;

select add_car('toyota','camry','used')
select add_car('mercedes','g-class','new')

--Stored function to add data into mech_dept table
create or replace function add_staff(first_name_ VARCHAR, last_name_ VARCHAR)
returns void
language plpgsql
as 
$$
begin
	insert into sales_dept(first_name, last_name)
	VALUES(first_name_,last_name_);
end;
$$;

select add_staff('Eggbert','Duong')

select * from sales_dept 

--Stored function to add data into mech_dept table
create or replace function add_invoice(sales_amount_ NUMERIC(7,2), staff_id_ INTEGER, customer_id_ INTEGER, vin_ INTEGER)
returns void
language plpgsql
as 
$$
begin
	insert into sales_invoices(sales_amount, staff_id, customer_id, vin)
	VALUES(sales_amount_, staff_id_, customer_id_, vin_);
end;
$$;

select add_invoice(2000.00,1,1,1)



