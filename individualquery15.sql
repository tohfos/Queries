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

-- after trying many different indices such as :
--create index on "Invoice" using BTREE("BillingCity")
--create  index on "Invoice" using Hash ("BillingCity")
--create index on "Invoice" using Hash ("Total")
--create index on "Invoice" using BTREE ("Total")
-- and also inspecting the data we realized that the query selects the top invoiced city out of 53 cities which means that the original table size is too small for us to index and therefore the planner will always favor the sequential approach.
