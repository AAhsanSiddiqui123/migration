-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN description;
COMMIT;  

