-- Revert: schemas/dashboard_public/tables/question_values/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN data;
COMMIT;  

