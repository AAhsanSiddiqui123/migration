-- Verify: schemas/dashboard_public/tables/user_forms/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_forms', 'delete', 'authenticated');
COMMIT;  

