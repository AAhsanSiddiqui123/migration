-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations DROP COLUMN description;
COMMIT;  

