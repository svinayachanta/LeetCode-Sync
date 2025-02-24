select s.name
from salesperson s
where not exists (
select 1
from orders o
left join company c on o.com_id = c.com_id
where o.sales_id = s.sales_id and c.name = 'RED')