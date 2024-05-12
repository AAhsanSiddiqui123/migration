-- Revert: schemas/dashboard_public/tables/question_values/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN image;
COMMIT;  

