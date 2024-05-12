-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations DROP COLUMN description;
COMMIT;  

