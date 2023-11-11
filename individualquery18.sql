--Query 18

-- latency average = 0.467 ms
-- tps = 2139.288956 (including connections establishing)
-- tps = 2139.443374 (excluding connections establishing)


--total_exec_time = 20594.313323999966
--total_plan_time =  11541.849897000007


select c."CustomerId",
c."FirstName",
c."LastName",
sum(inv."UnitPrice") as invoices
from "Invoice" i
join "InvoiceLine" inv
on inv."InvoiceId" = i."InvoiceId"
join "Customer" c
on c."CustomerId" = i."CustomerId"
where c."FirstName" = 'Robert'
group by c."CustomerId",c."FirstName",c."LastName";