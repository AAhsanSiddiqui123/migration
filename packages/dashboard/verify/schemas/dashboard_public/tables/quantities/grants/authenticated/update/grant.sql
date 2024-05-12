-- Verify: schemas/dashboard_public/tables/quantities/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.quantities', 'update', 'authenticated');
COMMIT;  

