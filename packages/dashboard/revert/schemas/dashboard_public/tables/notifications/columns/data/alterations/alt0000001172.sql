-- Revert: schemas/dashboard_public/tables/notifications/columns/data/alterations/alt0000001172 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.data IS NULL;
COMMIT;  

