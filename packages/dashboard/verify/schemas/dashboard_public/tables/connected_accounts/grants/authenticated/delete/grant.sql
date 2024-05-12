-- Verify: schemas/dashboard_public/tables/connected_accounts/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.connected_accounts', 'delete', 'authenticated');
COMMIT;  

