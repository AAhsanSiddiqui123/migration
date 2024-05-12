-- Verify: schemas/dashboard_public/tables/question_template_language_variations/indexes/question_template_language_variations_question_template_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.question_template_language_variations', 'question_template_language_variations_question_template_id_idx');
COMMIT;  

