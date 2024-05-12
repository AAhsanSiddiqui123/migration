-- Revert: schemas/dashboard_public/tables/user_settings/constraints/user_settings_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings 
    DROP CONSTRAINT user_settings_user_id_fkey;

COMMIT;  

