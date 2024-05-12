-- Revert: schemas/dashboard_public/tables/user_settings/columns/temporary_bounds/alterations/alt0000001615 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.temporary_bounds IS NULL;
COMMIT;  

