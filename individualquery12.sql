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