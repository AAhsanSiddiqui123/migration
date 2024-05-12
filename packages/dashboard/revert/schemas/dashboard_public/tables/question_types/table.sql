-- Revert: schemas/dashboard_public/tables/question_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".question_types;
COMMIT;  

