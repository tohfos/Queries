--Query 12

select "FirstName", "LastName", "InvoiceId", "InvoiceDate", "BillingAddress"
from "Invoice" i
join "Customer" c on i."CustomerId" = c."CustomerId"
where "BillingCountry" = 'Brazil';