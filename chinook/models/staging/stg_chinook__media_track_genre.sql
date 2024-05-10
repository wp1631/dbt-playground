with media_type as (
    select * from {{ ref('stg_chinook__media_type') }}
),

track as (
    select * from {{ ref('stg_chinook__track_info') }}
),

genre as (
    select * from {{ ref('stg_chinook__genre') }}
)

select track.name as name, album_id, composer, unit_price, media_type.name as media_type, genre.name as genre from (
    track left join media_type using (media_type_id) left join genre using (genre_id)
)
