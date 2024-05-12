-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_reusable/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN is_reusable;
COMMIT;  

