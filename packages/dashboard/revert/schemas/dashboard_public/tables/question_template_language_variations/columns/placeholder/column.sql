-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/placeholder/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN placeholder;
COMMIT;  

