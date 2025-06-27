select *
from {{ ref('Table_1') }}
where ACCOUNT_TYPE = 'Savings'

-- Savings
-- Loan
-- Checking
-- Credit Card