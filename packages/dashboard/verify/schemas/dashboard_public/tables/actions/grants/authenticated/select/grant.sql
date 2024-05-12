-- Verify: schemas/dashboard_public/tables/actions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.actions', 'select', 'authenticated');
COMMIT;  

