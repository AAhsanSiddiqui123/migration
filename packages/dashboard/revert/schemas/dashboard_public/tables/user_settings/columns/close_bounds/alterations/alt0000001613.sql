-- Revert: schemas/dashboard_public/tables/user_settings/columns/close_bounds/alterations/alt0000001613 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.close_bounds IS NULL;
COMMIT;  

