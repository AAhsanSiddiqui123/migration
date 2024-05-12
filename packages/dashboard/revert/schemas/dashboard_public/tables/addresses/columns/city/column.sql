-- Revert: schemas/dashboard_public/tables/addresses/columns/city/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN city;
COMMIT;  

