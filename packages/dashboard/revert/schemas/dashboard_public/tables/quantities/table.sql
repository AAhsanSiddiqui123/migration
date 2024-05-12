-- Revert: schemas/dashboard_public/tables/quantities/table from pg

BEGIN;
DROP TABLE "dashboard_public".quantities;
COMMIT;  

