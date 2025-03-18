create DATABASE scoped credential Cred_zyad
with 
    Identity = 'Managed Identity'


create EXTERNAL data source source_silver 
with 
(
    Location = 'https://zyadawstoragelake.blob.core.windows.net/silver',
    CREDENTIAL = Cred_zyad
)

create EXTERNAL data source source_gold
with 
(
    Location = 'https://zyadawstoragelake.blob.core.windows.net/gold',
    CREDENTIAL = Cred_zyad
)


create EXTERNAL file FORMAT format_parqet
with 
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)



CREATE EXTERNAL table gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parqet
) 
AS 
select * from gold.Sales


SELECT * from gold.Sales
