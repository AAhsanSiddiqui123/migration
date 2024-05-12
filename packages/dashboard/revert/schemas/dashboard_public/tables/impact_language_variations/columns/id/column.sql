-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations DROP COLUMN id;
COMMIT;  

