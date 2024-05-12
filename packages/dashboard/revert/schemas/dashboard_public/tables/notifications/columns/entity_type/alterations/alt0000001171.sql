-- Revert: schemas/dashboard_public/tables/notifications/columns/entity_type/alterations/alt0000001171 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.entity_type IS NULL;
COMMIT;  

