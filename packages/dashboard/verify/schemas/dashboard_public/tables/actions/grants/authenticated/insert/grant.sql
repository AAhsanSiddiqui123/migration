-- Verify: schemas/dashboard_public/tables/actions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.actions', 'insert', 'authenticated');
COMMIT;  

