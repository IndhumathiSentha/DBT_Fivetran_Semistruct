{{ config(materialized='ephemeral') }}

SELECT
XMLGET(s.value, 'Transaction_ID'):"$"::string as "Transaction_ID",
XMLGET(s.value, 'Customer_ID'):"$"::int as "Customer_ID",
XMLGET(s.value, 'Transaction_Date'):"$"::date as "Transaction_Date",
XMLGET(s.value, 'Transaction_Type'):"$"::string as "Transaction_Type",
XMLGET(s.value, 'Transaction_Amount'):"$"::string as "Transaction_Amount",
XMLGET(s.value, 'Transaction_Mode'):"$"::string as "Transaction_Mode"
FROM MYDB.AZURE_BLOB_STORAGE_XML.XML_DATA,
LATERAL FLATTEN(TO_ARRAY(MYDB.AZURE_BLOB_STORAGE_XML.XML_DATA._DATA: "$")) s