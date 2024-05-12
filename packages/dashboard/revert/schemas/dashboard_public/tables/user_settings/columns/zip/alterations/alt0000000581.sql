-- Revert: schemas/dashboard_public/tables/user_settings/columns/zip/alterations/alt0000000581 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.zip IS NULL;
COMMIT;  

