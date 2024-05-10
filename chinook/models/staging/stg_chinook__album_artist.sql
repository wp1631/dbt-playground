with album as (
    select * from {{ ref('stg_chinook__album') }}
),
artist as (
    select * from {{ ref('stg_chinook__artist') }}
)

select name as artist_name, title as album_title, album_id
from (
    album left join artist using (artist_id)
)
