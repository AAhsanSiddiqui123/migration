-- Verify: schemas/dashboard_public/tables/action_questions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_questions', 'select', 'authenticated');
COMMIT;  

