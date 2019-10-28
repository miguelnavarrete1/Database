create table Order (
	OrderID BIGSERIAL PRIMARY KEY,
	CustomerID INTEGER 
	REFERENCES Customer(CustomerID) NOT NULL,
	Eequipment_No. INTEGER 
	REFERENCES Equipment_Type(Eequipment_No.) NOT NULL,
	Drop_off_Date DATE,
	Pick_up_Date DATE,
	Shipping_Address VARCHAR(50)
	REFERENCES Customer(Shipping_Address) NOT NULL,
	Billing_Address VARCHAR(50)
	REFERENCES Customer(Billing_Address),
	Order_Total INTEGER,
	EmployeeID INTEGER
	REFERENCES Employee(EmployeeID) NOT NULL,
	Tracking_Status INTEGER NOT NULL
);