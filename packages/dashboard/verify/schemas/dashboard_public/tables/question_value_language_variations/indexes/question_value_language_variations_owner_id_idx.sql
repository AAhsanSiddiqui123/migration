-- Verify: schemas/dashboard_public/tables/question_value_language_variations/indexes/question_value_language_variations_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.question_value_language_variations', 'question_value_language_variations_owner_id_idx');
COMMIT;  

