-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/help_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN help_text;
COMMIT;  

