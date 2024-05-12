-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN question_template_id;
COMMIT;  

