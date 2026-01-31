/*
    TEST: assert_order_amount_is_positive
    OBJECTIVE: Ensure no orders have a negative or zero amount.
*/

select
    order_id,
    order_amount_usd
from {{ ref('int_orders_cleansed') }}
where order_amount_usd <= 0