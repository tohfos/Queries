--Query 14

select e."FirstName", e."LastName", sum(i."Total") as TotalSales
from "Employee" e
join "Customer" c on c."SupportRepId" = e."EmployeeId"
join "Invoice" i on c."CustomerId" = i."InvoiceId"
group by e."FirstName", e."LastName";