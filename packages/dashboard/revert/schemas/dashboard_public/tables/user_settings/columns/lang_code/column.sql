-- Revert: schemas/dashboard_public/tables/user_settings/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN lang_code;
COMMIT;  

