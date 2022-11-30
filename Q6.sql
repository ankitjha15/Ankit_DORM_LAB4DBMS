select t3.cat_id, t3.cat_name, t3.pro_name, min(t3.min_price) as min_price from
(select category.*,t2.pro_name,t2.min_price from category inner join
(select product.*,t1.min_price from product inner join
(select pro_id, min(supp_price) as min_price from supplier_pricing group by pro_id) as t1
on product.pro_id = t1.pro_id) as t2
on category.cat_id = t2.cat_id) as t3
group by t3.cat_id;