-- Verify: schemas/dashboard_public/tables/actions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.actions', 'delete', 'authenticated');
COMMIT;  

