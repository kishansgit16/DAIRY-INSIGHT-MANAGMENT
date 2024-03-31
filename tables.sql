CREATE TABLE milk_farm (
    worker_id INT PRIMARY KEY,
    worker_name VARCHAR(10),
    attended VARCHAR(3),
    work_done VARCHAR(10),
    wages_given INT,
    animal_id INT,
    stock_report VARCHAR(10),
    FOREIGN KEY (animal_id) REFERENCES animal(animal_id)
);
CREATE TABLE animal (
    animal_id INT PRIMARY KEY,
    animal_type VARCHAR(50),
    health_id INT
);
CREATE TABLE animal_check (
     animal_id INT,
    health_id INT PRIMARY KEY,
    insuranced VARCHAR(3),
    FOREIGN KEY (animal_id) REFERENCES animal(animal_id)
);
create TABLE products(
    product_id INT PRIMARY KEY,
    animal_id INT,
    product_type VARCHAR(10),
    Quantity VARCHAR(10),
  drop
);
create TABLE sales(
    product_id INT,
    sales_id INT PRIMARY KEY,
    product_name VARCHAR(10),
    product_cost INT,
    available VARCHAR(3),
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);
create TABLE expenses(
    expenses_id INT PRIMARY KEY, 
     day VARCHAR(10),
     date_recording DATE,
     product_name VARCHAR(7),
     quantity_sold INT,
     income INT,
     FOREIGN KEY (product_name)REFERENCES sales(product_name)
);
