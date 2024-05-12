-- Revert: schemas/dashboard_public/tables/notifications/columns/entity_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN entity_type;
COMMIT;  

