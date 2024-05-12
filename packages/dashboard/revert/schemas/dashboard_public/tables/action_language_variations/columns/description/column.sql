-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN description;
COMMIT;  

