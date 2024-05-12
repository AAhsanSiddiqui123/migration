-- Revert: schemas/dashboard_public/tables/user_forms/columns/form_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN form_id;
COMMIT;  

