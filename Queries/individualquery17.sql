--Query 17

-- latency average = 1.288 ms
-- tps = 776.246315 (including connections establishing)
-- tps = 776.267985 (excluding connections establishing)

--total_exec_time = 103809.11329599806
--total_plan_time = 11678.42446400008


select c."CustomerId",
c."FirstName",
c."LastName",
sum(inv."UnitPrice") as invoices
from "Invoice" i
join "InvoiceLine" inv
on inv."InvoiceId" = i."InvoiceId"
join "Customer" c
on c."CustomerId" = i."CustomerId"
group by c."CustomerId",c."FirstName",c."LastName";