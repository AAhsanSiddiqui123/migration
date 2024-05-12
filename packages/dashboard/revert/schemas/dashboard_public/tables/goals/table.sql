-- Revert: schemas/dashboard_public/tables/goals/table from pg

BEGIN;
DROP TABLE "dashboard_public".goals;
COMMIT;  

