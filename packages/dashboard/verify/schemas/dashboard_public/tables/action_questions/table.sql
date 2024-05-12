-- Verify: schemas/dashboard_public/tables/action_questions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_questions');
COMMIT;  

