-- Verify: schemas/dashboard_public/tables/user_questions/indexes/user_questions_template_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_questions', 'user_questions_template_id_idx');
COMMIT;  

