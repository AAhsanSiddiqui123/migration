-- Revert: schemas/dashboard_public/tables/quantities/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN id;
COMMIT;  

