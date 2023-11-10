--Query 15

select "BillingCity", sum("Total") as invoice_totals from "Invoice"
group by 1
order by 2 Desc
limit 1;