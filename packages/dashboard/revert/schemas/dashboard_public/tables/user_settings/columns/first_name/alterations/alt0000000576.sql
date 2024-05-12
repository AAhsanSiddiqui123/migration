-- Revert: schemas/dashboard_public/tables/user_settings/columns/first_name/alterations/alt0000000576 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_settings DROP CONSTRAINT user_settings_first_name_chk;
COMMIT;  

