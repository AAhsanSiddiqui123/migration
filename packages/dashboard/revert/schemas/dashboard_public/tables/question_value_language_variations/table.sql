-- Revert: schemas/dashboard_public/tables/question_value_language_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".question_value_language_variations;
COMMIT;  

