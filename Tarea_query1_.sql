-- esta es la tarea


-- Qué contactos de proveedores tienen la posición de sales representative?
select s.company_name ,s.contact_title 
from suppliers s 
where s.contact_title ='Sales Representative';
--Qué contactos de proveedores no son marketing managers?
select s.company_name ,s.contact_title 
from suppliers s 
where s.contact_title !='Sales Manager';
--Cuales órdenes no vienen de clientes en Estados Unidos?
select o.order_id, o.ship_country 
from orders o 
where o.ship_country !='USA';
--Qué productos de los que transportamos son quesos?
select p.product_id ,p.product_name, p.category_id 
from products p 
where p.category_id =4;
--Qué ordenes van a Bélgica o Francia?
select o.order_id ,o.ship_country 
from orders o 
where o.ship_country = 'Belgium' or o.ship_country ='France';
--Qué órdenes van a LATAM?
select o.order_id ,o.ship_country 
from orders o 
where o.ship_country ='Mexico'
or o.ship_country ='Brazil'
or o.ship_country ='Venezuela';
--Qué órdenes no van a LATAM?
select o.order_id ,o.ship_country 
from orders o 
where o.ship_country !='Mexico'
or o.ship_country !='Brazil'
or o.ship_country !='Venezuela';
--Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro
select concat(e.last_name,' ',e.first_name) 
from employees e  ;
--Cuánta lana tenemos en inventario?
select sum (p.unit_price*p.units_in_stock ) as lana_en_stock
from products p ;
--Cuantos clientes tenemos de cada país?
select count(c.customer_id ),c.country 
from customers c 
group by c.country 
order by c.country asc