-- Revert: schemas/dashboard_public/tables/question_values/columns/text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN text;
COMMIT;  

