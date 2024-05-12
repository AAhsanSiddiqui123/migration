-- Verify: schemas/dashboard_public/tables/users/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.users', 'update', 'authenticated');
COMMIT;  

