-- Revert: schemas/dashboard_public/tables/question_types/columns/ref_num/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN ref_num;
COMMIT;  

