-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN is_private;
COMMIT;  

