-- Revert: schemas/dashboard_public/tables/user_question_language_variations/triggers/_000000000_ensure_insert_user_question_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_user_question_id ON "dashboard_public".user_question_language_variations;
COMMIT;  

