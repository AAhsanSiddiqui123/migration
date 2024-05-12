-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/question_value_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN question_value_id;
COMMIT;  

