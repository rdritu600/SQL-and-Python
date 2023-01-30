select * from card_holder;
select * from credit_card;
select * from merchant;
select * from merchant_category;
select * from transaction;

-- Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.
-- How can you isolate (or group) the transactions of each cardholder?

Select card_holder.name, credit_card.card, transaction.date, transaction.amount,
merchant.name, merchant_category.name 
from transaction
join credit_card on credit_card.card = transaction.card
join card_holder on card_holder.id = credit_card.cardholder_id
join merchant on merchant.id = transaction.id_merchant
join merchant_category on merchant_category.id = merchant.id_merchant_category
order by card


-- Count the transactions that are less than $2.00 per cardholder
select * from transaction
where amount <=2
order by card, amount DESC;

-- Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
No, because we can identified a total of 353 out of 3500 transaction and vendors are different as well.

-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
Select * from transaction
where date_part('hour',date) >= 7 and 
date_part('hour',date)<=9
order by amount desc
limit 100;
