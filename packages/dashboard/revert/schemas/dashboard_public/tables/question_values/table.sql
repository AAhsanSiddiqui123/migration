-- Revert: schemas/dashboard_public/tables/question_values/table from pg

BEGIN;
DROP TABLE "dashboard_public".question_values;
COMMIT;  

