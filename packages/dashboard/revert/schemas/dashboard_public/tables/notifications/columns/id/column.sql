-- Revert: schemas/dashboard_public/tables/notifications/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN id;
COMMIT;  

