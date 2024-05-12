-- Revert: schemas/dashboard_public/tables/actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".actions;
COMMIT;  

