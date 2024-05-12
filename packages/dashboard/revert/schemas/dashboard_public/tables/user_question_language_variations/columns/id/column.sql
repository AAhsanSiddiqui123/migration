-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations DROP COLUMN id;
COMMIT;  

