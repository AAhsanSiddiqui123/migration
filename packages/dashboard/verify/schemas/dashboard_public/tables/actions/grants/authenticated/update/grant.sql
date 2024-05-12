-- Verify: schemas/dashboard_public/tables/actions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.actions', 'update', 'authenticated');
COMMIT;  

