-- Verify: schemas/dashboard_public/tables/action_questions/indexes/action_questions_question_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_questions', 'action_questions_question_id_idx');
COMMIT;  

