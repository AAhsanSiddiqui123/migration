-- Revert: schemas/dashboard_public/tables/addresses/columns/county_province/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN county_province;
COMMIT;  

