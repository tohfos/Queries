--Query 12

-- latency average = 0.273 ms
-- tps = 3661.089575 (including connections establishing)
-- tps = 3661.520373 (excluding connections establishing)



--total_plan_time = 5961.7133869999825
--total_exec_time = 7710.071809000036
select "FirstName", "LastName", "InvoiceId", "InvoiceDate", "BillingAddress"
from "Invoice" i
join "Customer" c on i."CustomerId" = c."CustomerId"
where "BillingCountry" = 'Brazil';


-- latency average = 0.137 ms
-- tps = 7279.870214 (including connections establishing)
-- tps = 7280.845166 (excluding connections establishing)
--create index idx_BillingCoun on "Invoice" using hash("BillingCountry") 


--idx_scan = 100000
--idx_tup_read = 3500000
--idx_tup_fetch = 0
