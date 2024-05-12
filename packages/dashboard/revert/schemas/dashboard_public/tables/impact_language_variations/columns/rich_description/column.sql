-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations DROP COLUMN rich_description;
COMMIT;  

