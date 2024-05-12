-- Revert: schemas/dashboard_public/tables/forms/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN name;
COMMIT;  

