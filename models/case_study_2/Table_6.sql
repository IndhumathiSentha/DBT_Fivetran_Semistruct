select *
from {{ ref('Table_1') }}
where ACCOUNT_TYPE = 'Credit Card'

-- Savings
-- Loan
-- Checking
-- Credit Card