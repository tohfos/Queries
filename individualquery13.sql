--Query 13


-- latency average = 0.142 ms
-- tps = 7056.374322 (including connections establishing)
-- tps = 7059.044041 (excluding connections establishing)



--total_plan_time = 2069.16381600001
--total_exec_time = 1434.4525079999732

select *
from "Customer"
where "Country" = 'Brazil';


--create index idx_Customer on "Customer" ("Country") where "Country" = 'Brazil'
-- As expected the index was not used as Custome table size is 59 and the query returns only 5 rows , meaning a sequential scan is more effiecient than a index, however in case the table is larger and the data is more diverse then this index would be optimal as it is created on the condition needed meaning it will get us a subset that has all the desired data.


--latency average = 0.129 ms
--tps = 7748.032458 (including connections establishing)
--tps = 7750.695506 (excluding connections establishing)
