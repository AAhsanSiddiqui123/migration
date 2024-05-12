-- Revert: schemas/dashboard_public/tables/user_forms/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN user_id;
COMMIT;  

