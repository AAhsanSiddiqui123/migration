-- Revert: schemas/dashboard_public/tables/user_forms/columns/complete/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN complete;
COMMIT;  

