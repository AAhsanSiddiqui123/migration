-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/label/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations DROP COLUMN label;
COMMIT;  

