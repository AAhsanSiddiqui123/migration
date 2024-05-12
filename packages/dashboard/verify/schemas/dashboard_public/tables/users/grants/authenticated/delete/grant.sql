-- Verify: schemas/dashboard_public/tables/users/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.users', 'delete', 'authenticated');
COMMIT;  

