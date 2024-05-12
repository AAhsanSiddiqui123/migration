-- Revert: schemas/dashboard_public/tables/question_values/columns/question_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN question_id;
COMMIT;  

