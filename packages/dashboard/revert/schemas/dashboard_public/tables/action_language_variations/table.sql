-- Revert: schemas/dashboard_public/tables/action_language_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_language_variations;
COMMIT;  

