-- Verify: schemas/dashboard_public/tables/users/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.users', 'select', 'authenticated');
COMMIT;  

