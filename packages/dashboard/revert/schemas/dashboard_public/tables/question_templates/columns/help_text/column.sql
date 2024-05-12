-- Revert: schemas/dashboard_public/tables/question_templates/columns/help_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN help_text;
COMMIT;  

