-- Revert: schemas/dashboard_public/tables/notifications/columns/should_push/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN should_push;
COMMIT;  

