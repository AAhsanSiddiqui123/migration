-- Revert: schemas/dashboard_public/tables/notification_preferences/table from pg

BEGIN;
DROP TABLE "dashboard_public".notification_preferences;
COMMIT;  

