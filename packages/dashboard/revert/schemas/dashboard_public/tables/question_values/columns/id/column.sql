-- Revert: schemas/dashboard_public/tables/question_values/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN id;
COMMIT;  

