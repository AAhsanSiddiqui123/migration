-- Revert: schemas/dashboard_public/tables/question_values/columns/is_other/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN is_other;
COMMIT;  

