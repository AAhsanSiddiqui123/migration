-- Verify: schemas/dashboard_public/tables/action_questions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_questions', 'update', 'authenticated');
COMMIT;  

