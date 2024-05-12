-- Verify: schemas/dashboard_public/tables/user_question_language_variations/triggers/_000000000_ensure_insert_user_question_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_user_question_id');
COMMIT;  

