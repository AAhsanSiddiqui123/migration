-- Revert: schemas/dashboard_public/tables/notifications/columns/recipient_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN recipient_id;
COMMIT;  

