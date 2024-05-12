-- Revert: schemas/dashboard_public/tables/impact_language_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".impact_language_variations;
COMMIT;  

