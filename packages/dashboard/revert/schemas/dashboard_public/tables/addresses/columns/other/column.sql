-- Revert: schemas/dashboard_public/tables/addresses/columns/other/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN other;
COMMIT;  

