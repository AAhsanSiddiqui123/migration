-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN id;
COMMIT;  

