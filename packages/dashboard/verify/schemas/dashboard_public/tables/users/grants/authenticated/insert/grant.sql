-- Verify: schemas/dashboard_public/tables/users/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.users', 'insert', 'authenticated');
COMMIT;  

