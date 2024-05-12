-- Verify: schemas/dashboard_public/tables/connected_accounts/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.connected_accounts', 'insert', 'authenticated');
COMMIT;  

