-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN name;
COMMIT;  

