select 
    order_id
    sum(amount) as total_amount
from {{ ref('stg_stripe__payment') }}
group by 1
habing sum(amount) < 0
