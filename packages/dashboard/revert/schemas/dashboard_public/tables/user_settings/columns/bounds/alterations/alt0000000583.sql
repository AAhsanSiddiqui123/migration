-- Revert: schemas/dashboard_public/tables/user_settings/columns/bounds/alterations/alt0000000583 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.bounds IS NULL;
COMMIT;  

