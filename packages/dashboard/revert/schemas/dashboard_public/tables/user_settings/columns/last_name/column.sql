-- Revert: schemas/dashboard_public/tables/user_settings/columns/last_name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN last_name;
COMMIT;  

