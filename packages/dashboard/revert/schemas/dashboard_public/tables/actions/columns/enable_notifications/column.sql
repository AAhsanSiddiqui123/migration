-- Revert: schemas/dashboard_public/tables/actions/columns/enable_notifications/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN enable_notifications;
COMMIT;  

