-- Revert: schemas/dashboard_public/tables/action_impacts/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_impacts;
COMMIT;  

