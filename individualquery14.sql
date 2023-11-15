--Query 14





-- latency average = 0.204 ms
-- tps = 4893.852277 (including connections establishing)
-- tps = 4894.447931 (excluding connections establishing)
--total_plan_time = 129154.61165600184
--total_exec_time = 84989.64085599907

select e."FirstName", e."LastName", sum(i."Total") as TotalSales
from "Employee" e
join "Customer" c on c."SupportRepId" = e."EmployeeId"
join "Invoice" i on c."CustomerId" = i."InvoiceId"
group by e."FirstName", e."LastName";


--create index idx_CUstomer on "Customer" using BTREE("CustomerId");
-- creating this index resulting in a 100% fetch rate , meaning the index was used and the query was optimized. we chose customerID as it is a join predicate and we used BTREE as it is good with sorting data.

-- latency average = 0.182 ms
-- tps = 5489.592640 (including connections establishing)
-- tps = 5490.070767 (excluding connections establishing)
