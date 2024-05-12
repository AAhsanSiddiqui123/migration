-- Revert: schemas/dashboard_public/tables/user_settings/columns/last_name/alterations/alt0000000578 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_settings DROP CONSTRAINT user_settings_last_name_chk;
COMMIT;  

