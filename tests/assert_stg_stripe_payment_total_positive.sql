select 
    order_id,
    sum(amount) as total_amount
from {{ ref('_stg_stripe__payment') }}
group by 1
having sum(amount) < 0
