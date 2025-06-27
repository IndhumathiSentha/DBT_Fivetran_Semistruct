select *
from {{ ref('Table_1') }}
where ACCOUNT_TYPE = 'Loan'

-- Savings
-- Loan
-- Checking
-- Credit Card