-- Revert: schemas/dashboard_public/tables/group_goals/table from pg

BEGIN;
DROP TABLE "dashboard_public".group_goals;
COMMIT;  

