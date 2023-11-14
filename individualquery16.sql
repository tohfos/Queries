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

--CREATE INDEX total ON "Invoice" USING BTREE ("Total");
--we created a BTREE index as it's the best index in terms of sorting , and since we need the total to be ordered DESC so the BTREE index will be the best as it will be picked easily.

--latency average = 0.182 ms
--tps = 5507.072831 (including connections establishing)
--tps = 5507.779643 (excluding connections establishing)
