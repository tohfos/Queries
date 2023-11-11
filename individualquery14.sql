--Query 14


-- latency average = 0.349 ms
-- tps = 2863.642795 (including connections establishing)
-- tps = 2864.074550 (excluding connections establishing)
--total_plan_time = 11170.953908000014
--total_exec_time = 7404.989403000009



select e."FirstName", e."LastName", sum(i."Total") as TotalSales
from "Employee" e
join "Customer" c on c."SupportRepId" = e."EmployeeId"
join "Invoice" i on c."CustomerId" = i."InvoiceId"
group by e."FirstName", e."LastName";