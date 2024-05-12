-- Verify: schemas/dashboard_public/tables/onboarding_questions/triggers/_000000000_ensure_insert_question_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_question_id');
COMMIT;  

