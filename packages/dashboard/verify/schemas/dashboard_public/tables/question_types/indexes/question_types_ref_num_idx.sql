-- Verify: schemas/dashboard_public/tables/question_types/indexes/question_types_ref_num_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.question_types', 'question_types_ref_num_idx');
COMMIT;  

