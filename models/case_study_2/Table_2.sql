SELECT *
from {{ ref('Table_1') }}
qualify rank() over(partition by 1 order by Transaction_Amount desc)<6
