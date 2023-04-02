
/*MITCHELL'S QUERIES*/

/*---------QUERY-1-------------*/

select customer_name, ROUND(AVG(bill_amount)) AS "AVERAGE MONTHLY EXPENSES", bill_type from customer
inner join bills using (customer_id)
where customer_name like "Mia Chinhanga";

/*---------QUERY-2-------------*/

delete from associative_notification.
where notification_type = "paid" AND customer_id =1;

/*---------QUERY-3-------------*/
select (
  select count(*)
   from customer)
   as Number_Of_Users,
   (select count(*)
    from providers
    )
    as Number_Of_providers;

/*---------QUERY-4-------------*/
insert into customer values ("Jenny Mayers",021,3000,10036);
select * from customer;

/*---------QUERY-5-------------*/

update customer
set customer_bank =278090 where customer_name = "Mia Chinhanga";

/*---------QUERY-6-------------*/
update customer 
set customer_bank  =  customer_bank  + 100.00 
where customer_id = 004;


/*RIYA'S QUERIES*/
/*---------QUERY-1-------------*/

/*---------QUERY-2-------------*/

select bill_number,customer_name,bill_type,bill_amount,bill_amount * 1.5 AS "BILL AMOUNT AFTER FINE",notification_type from banks 
inner join bills on banks.bank_identity_code = bills.bank_identity_code
inner join customer on bills.customer_id = customer.customer_id
inner join associative_notification on customer.customer_id = associative_notification.customer_id
where customer_name like "Zain Malik" AND notification_type like "missed";

/*---------QUERY-3-------------*/
select SUM(bill_amount) AS "Total Amount Paid in Bills",customer_name, "1 month" as "Time Period" from bills 
inner join customer on (bills.customer_id = customer.customer_id)
where customer_name like "Riya Vishnoi";

/*---------QUERY-4-------------*/
Select customer_name,bill_type,bill_amount,notification_type AS "Payment status" from bills 
inner join customer on customer.customer_id = bills.customer_id 
inner join associative_notification on associative_notification.customer_id = customer.customer_id where customer_name like "Riya Vishnoi";

/*---------QUERY-5-------------*/

update associative_notification 
set notification_type = "paid"
where customer_id like 4 AND notification_type like "due";
/*---------QUERY-6-------------*/

select bill_type,sum(bill_amount) AS "Earnings this month" from bills
where bill_type like "electricity";

/*---------QUERY-7-------------*/

SELECT bill_type As "Provider Type", SUM(bill_amount)AS "Total Amount"
FROM bills
GROUP BY bill_type 
Order By bill_type;
/*---------QUERY-8-------------*/
select bill_number,bill_amount,customer_id,bank_name,bank_payment_Method from bills inner join banks on banks.bank_identity_code = bills.bank_identity_code where customer_id = 3;


/*PRABHKIRAT'S QUERIES*/
/*---------QUERY-1-------------*/

select bill_number as 'BILL NUMBER',
customer_name as 'OWNER NAME',
bill_amount as 'BILL AMOUNT',
notification_type as 'PAYMENT STATUS'
from bills
inner join customer on (bills.customer_id = customer.customer_id)
inner join associative_notification on (customer.customer_id = associative_notification.customer_id)
where customer_name ="Mia Chinhanga" 
order by "BILL AMOUNT" asc;

/*---------QUERY-2-------------*/

select customer_name, bill_type,bill_amount, notification_type from bills
inner join customer on (bills.customer_id = customer.customer_id)
left join associative_notification on (customer.customer_id = associative_notification.customer_id)
where notification_type like "missed" AND customer_name like "Zain Malik"
;
/*---------QUERY-3-------------*/
delete from associative_notification
where customer_id = "002" AND notification_type = "paid";
select * from associative_notification
where customer_id = "002";
/*---------QUERY-4-------------*/

UPDATE bills
SET due_dates = "04/05/2023"
WHERE bill_type = "water";

SELECT bill_number, customer_name, bill_type, bill_amount, due_dates AS "New Dates"
FROM bills
INNER JOIN customer ON (bills.customer_id = customer.customer_id)
INNER JOIN associative_notification ON (customer.customer_id = associative_notification.customer_id)
WHERE notification_type IN ("missed", "paid") AND customer_name = "Prabhikt Singh";

/*SHILOONG'S QUERIES*/
/*---------QUERY-1-------------*/

select * from customer
inner join bills on (customer.customer_id = bills.customer_id) where customer_name like "Mia Chinhanga";

/*---------QUERY-2-------------*/

select customer.customer_id,bills.bill_amount,bills.bill_type,bills.due_dates 
from customer 
inner join bills on (customer.customer_id = bills.customer_id) 
where customer.customer_id = 3;

/*---------QUERY-3-------------*/
select customer.customer_name,customer.customer_bank,customer.customer_account,bank_identity_code 
from customer
inner join bills on (customer.customer_id = bills.customer_id)
where customer_name like "Shilong Lan";


