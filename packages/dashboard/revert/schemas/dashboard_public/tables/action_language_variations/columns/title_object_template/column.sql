-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/title_object_template/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN title_object_template;
COMMIT;  

