--Query 16

-- latency average = 0.378 ms
-- tps = 2646.439752 (including connections establishing)
-- tps = 2646.764368 (excluding connections establishing)

--total_plan_time = 2985.844414999964
--total_exec_time = 22096.705687000165

select "BillingCity", "Total" from "Invoice"
group by 1, 2
order by 2 Desc
limit 1;