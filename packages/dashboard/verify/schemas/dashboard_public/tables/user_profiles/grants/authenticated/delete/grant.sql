-- Verify: schemas/dashboard_public/tables/user_profiles/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_profiles', 'delete', 'authenticated');
COMMIT;  

