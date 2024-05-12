-- Verify: schemas/dashboard_public/tables/question_values/indexes/question_values_template_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.question_values', 'question_values_template_id_idx');
COMMIT;  

