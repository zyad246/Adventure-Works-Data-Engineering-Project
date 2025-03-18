------------------------
--calendar view 
------------------------
create view gold.Calendar
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'parquet'
    ) as CalView

------------------------
--Customer view 
------------------------
create view gold.Customers
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'parquet'
    ) as CusView

------------------------
--Products view 
------------------------
create view gold.Products
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'parquet'
    ) as ProView

------------------------
--Returns view 
------------------------
create view gold.Returns
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'parquet'
    ) as RetView


------------------------
--Sales view 
------------------------
create view gold.Sales
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'parquet'
    ) as SalesView


------------------------
--Territories view 
------------------------
create view gold.Territories
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'parquet'
    ) as TerView


------------------------
--Product_Subcategories view 
------------------------
create view gold.Product_Subcategories
as 
select * from 
OPENROWSET
    (
        BULK 'https://zyadawstoragelake.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'parquet'
    ) as SubCatView





