-- Verify: schemas/dashboard_public/tables/form_questions/indexes/form_questions_question_order_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.form_questions', 'form_questions_question_order_idx');
COMMIT;  

