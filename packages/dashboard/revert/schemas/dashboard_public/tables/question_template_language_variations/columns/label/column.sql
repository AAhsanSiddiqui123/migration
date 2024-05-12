-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/label/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN label;
COMMIT;  

