-- Revert: schemas/dashboard_public/tables/notifications/table from pg

BEGIN;
DROP TABLE "dashboard_public".notifications;
COMMIT;  

