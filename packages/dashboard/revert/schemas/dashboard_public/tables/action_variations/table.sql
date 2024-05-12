-- Revert: schemas/dashboard_public/tables/action_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_variations;
COMMIT;  

