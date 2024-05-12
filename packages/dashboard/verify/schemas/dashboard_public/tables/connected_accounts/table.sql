-- Verify: schemas/dashboard_public/tables/connected_accounts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.connected_accounts');
COMMIT;  

