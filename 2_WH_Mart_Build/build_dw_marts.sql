-- Step 1: DW - Create star schema tables
.read 2_WH_Mart_Build/01_create_tables_dw.sql

-- Step 2: DW - Load data from csv files into the star schema tables
.read 2_WH_Mart_Build/02_load_schema_dw.sql