/*
====================================================================
Create Database and Schemas
====================================================================
Script Purpose:
    This script creates a new database named 'DataWaarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the databasde: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' Database if it exists.
    All data in the database will be permanently deleted. proceed with caution and 
    ensure you have proper backups before running this script.
*/

USE maste;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE 'Datawarehouse'
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO


