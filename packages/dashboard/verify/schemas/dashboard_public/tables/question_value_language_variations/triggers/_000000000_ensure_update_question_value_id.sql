-- Verify: schemas/dashboard_public/tables/question_value_language_variations/triggers/_000000000_ensure_update_question_value_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_question_value_id');
COMMIT;  

