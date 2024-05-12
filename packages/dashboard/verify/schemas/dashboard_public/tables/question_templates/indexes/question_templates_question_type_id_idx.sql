-- Verify: schemas/dashboard_public/tables/question_templates/indexes/question_templates_question_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.question_templates', 'question_templates_question_type_id_idx');
COMMIT;  

