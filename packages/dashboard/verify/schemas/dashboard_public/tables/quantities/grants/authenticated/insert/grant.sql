-- Verify: schemas/dashboard_public/tables/quantities/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.quantities', 'insert', 'authenticated');
COMMIT;  

