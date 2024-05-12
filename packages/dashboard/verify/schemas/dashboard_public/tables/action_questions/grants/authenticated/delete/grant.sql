-- Verify: schemas/dashboard_public/tables/action_questions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_questions', 'delete', 'authenticated');
COMMIT;  

