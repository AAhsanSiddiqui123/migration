-- Revert: schemas/dashboard_public/tables/related_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".related_actions;
COMMIT;  

