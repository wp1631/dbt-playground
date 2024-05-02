with arincgrp_dat as (
    select id, inctype, incgrp, name from arincgrp
)

select arincgrp_dat.* from arincgrp_dat where id > 20
