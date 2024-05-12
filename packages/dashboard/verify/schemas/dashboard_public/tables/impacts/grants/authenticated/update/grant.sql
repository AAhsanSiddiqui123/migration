-- Verify: schemas/dashboard_public/tables/impacts/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts', 'update', 'authenticated');
COMMIT;  

