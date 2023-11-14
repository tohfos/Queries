--Query 13


-- latency average = 0.142 ms
-- tps = 7056.374322 (including connections establishing)
-- tps = 7059.044041 (excluding connections establishing)



--total_plan_time = 2069.16381600001
--total_exec_time = 1434.4525079999732

select *
from "Customer"
where "Country" = 'Brazil';