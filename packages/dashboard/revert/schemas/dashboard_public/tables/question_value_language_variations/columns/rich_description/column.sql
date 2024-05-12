-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN rich_description;
COMMIT;  

