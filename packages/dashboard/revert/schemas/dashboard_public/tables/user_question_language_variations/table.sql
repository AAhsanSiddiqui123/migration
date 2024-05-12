-- Revert: schemas/dashboard_public/tables/user_question_language_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_question_language_variations;
COMMIT;  

