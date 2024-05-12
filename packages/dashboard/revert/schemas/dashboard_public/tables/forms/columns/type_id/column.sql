-- Revert: schemas/dashboard_public/tables/forms/columns/type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN type_id;
COMMIT;  

