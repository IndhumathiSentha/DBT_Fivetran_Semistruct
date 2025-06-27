SELECT
cust.CUSTOMER_ID,
cust.ACCOUNT_TYPE,
cust.FIRST_NAME,
cust.MIDDLE_NAME,
cust.LAST_NAME,
cust.Billing_Address,
cust.Residential_Address,
cust.ACCNO,
cust.BALANCE,
cust.BRANCH,
trnx."Transaction_Date" as Transaction_Date,
trnx."Transaction_Type" as Transaction_Type,
trnx."Transaction_Amount" as Transaction_Amount,
trnx."Transaction_Mode" as Transaction_Mode
from {{ ref('customer_data') }} cust
join {{ ref('transaction_data') }} trnx
    on cust.Customer_ID = cust.Customer_ID