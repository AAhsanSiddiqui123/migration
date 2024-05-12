-- Revert: schemas/dashboard_public/tables/addresses/columns/state/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN state;
COMMIT;  

