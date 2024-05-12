-- Revert: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_update_question_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_question_id ON "dashboard_public".user_answers;
COMMIT;  

