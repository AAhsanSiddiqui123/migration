-- Revert: schemas/dashboard_public/tables/user_settings/constraints/user_settings_user_id_key/alterations/alt0000000585 from pg

BEGIN;
COMMENT ON CONSTRAINT user_settings_user_id_key ON "dashboard_public".user_settings IS NULL;
COMMIT;  

