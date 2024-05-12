-- Verify: schemas/dashboard_public/tables/quantities/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.quantities', 'select', 'authenticated');
COMMIT;  

