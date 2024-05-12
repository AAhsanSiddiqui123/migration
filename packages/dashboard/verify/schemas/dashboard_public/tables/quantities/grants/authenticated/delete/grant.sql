-- Verify: schemas/dashboard_public/tables/quantities/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.quantities', 'delete', 'authenticated');
COMMIT;  

