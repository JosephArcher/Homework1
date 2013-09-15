-- Joseph Archer
-- Queries Homework # 1

-- 1. List the data for all customers

SELECT 
  customers.cid, 
  customers.name, 
  customers.city, 
  customers.discount
FROM 
  public.customers;
  
-- 2. List the name and city of agents named Smith

SELECT  
  agents.name, 
  agents.city
FROM 
  public.agents
WHERE
   agents.name = 'Smith' ;

-- 3. List the PID, name , and quantity of products costing more than US $1.25

SELECT 
  products.pid, 
  products.name, 
  products.quantity
FROM 
  public.products
WHERE 
  products.priceusd > 1.25;

-- 4. List the ordno and aid of all orders

SELECT
   orders.ordno,
   orders.aid
FROM
   public.orders ;

-- 5. List the names and cities of customers not in Dallas

SELECT	
   customers.name ,
   customers.city
FROM
   public.customers
WHERE
   customers.city != 'Dallas';

-- 6. List the names of agents in New York or Newark

SELECT
   agents.name
FROM
   public.agents
WHERE
   agents.city = 'New York' OR agents.city = 'Newark' ;
   
-- 7. List all data for products not in New York or Newark that cost us$1 or less

SELECT *

FROM 
   public.products 
WHERE
   products.priceusd <= 1 AND products.city NOT IN ('New York' , 'Newark' ) ;
   
-- 8. List all data for orders in January or March

SELECT *

FROM 
   public.orders
WHERE
    orders.mon IN ('jan' , 'mar');
	
-- 9. list all data for orders in Febuarty less than US$100

SELECT *

FROM 
   public.orders
WHERE
    orders.mon = 'feb' AND orders.dollars < 100 ;
	
-- 10. List all orders from the customer whose cid is c005

SELECT *

FROM
 public.orders
 
WHERE
   orders.cid = 'c005' ;



   
   