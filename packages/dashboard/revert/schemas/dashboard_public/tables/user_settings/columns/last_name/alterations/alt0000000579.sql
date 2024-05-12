-- Revert: schemas/dashboard_public/tables/user_settings/columns/last_name/alterations/alt0000000579 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.last_name IS NULL;
COMMIT;  

