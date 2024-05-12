-- Verify: schemas/dashboard_public/tables/user_forms/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_forms', 'select', 'authenticated');
COMMIT;  

