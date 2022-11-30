select CUS_GENDER, COUNT(CUS_GENDER) COUNT from customer inner join (select CUS_ID from `order` where ORD_AMOUNT >= 3000) as t1 on customer.CUS_ID = t1.CUS_ID
group by CUS_GENDER;