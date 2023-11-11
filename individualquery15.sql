--Query 15

-- latency average = 0.295 ms
-- tps = 3386.231250 (including connections establishing)
-- tps = 3386.674723 (excluding connections establishing)

--total_plan_time = 2360.0882070000266
--total_exec_time = 14611.568424000132


select "BillingCity", sum("Total") as invoice_totals from "Invoice"
group by 1
order by 2 Desc
limit 1;