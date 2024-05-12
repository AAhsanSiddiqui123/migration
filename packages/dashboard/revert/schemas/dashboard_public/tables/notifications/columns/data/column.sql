-- Revert: schemas/dashboard_public/tables/notifications/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN data;
COMMIT;  

