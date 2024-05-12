-- Verify: schemas/dashboard_public/tables/user_question_language_variations/indexes/user_question_language_variations_user_question_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_question_language_variations', 'user_question_language_variations_user_question_id_idx');
COMMIT;  

