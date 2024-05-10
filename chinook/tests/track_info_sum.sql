with target as (
    select * from {{ ref('anal_marketing__track_info' ) }}
)

select * from (
    select
        name,
        sum(target.unit_price) as tot
    from target
    group by name
) where tot < 0
