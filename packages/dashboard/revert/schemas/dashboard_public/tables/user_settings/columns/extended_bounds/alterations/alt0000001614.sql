-- Revert: schemas/dashboard_public/tables/user_settings/columns/extended_bounds/alterations/alt0000001614 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.extended_bounds IS NULL;
COMMIT;  

