with track_info as (
    select * from {{ ref('stg_chinook__media_track_genre') }}
),

album_info as (
    select * from {{ ref('stg_chinook__album_artist') }}
)

select
    track_info.name,
    track_info.composer,
    track_info.unit_price,
    track_info.media_type,
    track_info.genre,
    album_info.artist_name,
    album_info.album_title
from (
    track_info left join album_info using (album_id)
)
