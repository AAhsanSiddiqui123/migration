-- Revert: schemas/dashboard_public/tables/forms/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN id;
COMMIT;  

