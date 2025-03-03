/*
=======================================================================================
  CREATE Database and Schemas
=======================================================================================
Scripts Purpose:
  This script creates a new database named 'AxelsDataWarehouse' after checking if it already exists. 
  If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas within the database:
  'bronze', 'silver', and 'gold'.


WARNING:
  Running this scripts will drop the entire 'DataWarehouse' ddatabase if it exists.
  All data in the database will be permanently delected. Proceed with caution and ensure you have proper backups before running this scripts.
  */



USE master;
GO

-- Drop and recreate the 'DateWarehouse' database
IF EXISTS (SELECT 1 from sys.databases WHERE name = 'AxelsDataWarehouse')
BEGIN
  ALTER DATABASE AxelsDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE AxelsDataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE AxelsDataWarehouse;
GO

USE AxelsDataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
