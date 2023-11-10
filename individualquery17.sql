--Query 17

select c."CustomerId",
c."FirstName",
c."LastName",
sum(inv."UnitPrice") as invoices
from "Invoice" i
join "InvoiceLine" inv
on inv."InvoiceId" = i."InvoiceId"
join "Customer" c
on c."CustomerId" = i."CustomerId"
group by c."CustomerId",c."FirstName",c."LastName";