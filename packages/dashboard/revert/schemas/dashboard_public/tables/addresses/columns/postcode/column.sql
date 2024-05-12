-- Revert: schemas/dashboard_public/tables/addresses/columns/postcode/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN postcode;
COMMIT;  

