-- Revert: schemas/dashboard_public/tables/question_value_language_variations/triggers/_000000000_ensure_insert_question_value_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_question_value_id ON "dashboard_public".question_value_language_variations;
COMMIT;  

