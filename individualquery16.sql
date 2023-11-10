--Query 16

select "BillingCity", "Total" from "Invoice"
group by 1, 2
order by 2 Desc
limit 1;