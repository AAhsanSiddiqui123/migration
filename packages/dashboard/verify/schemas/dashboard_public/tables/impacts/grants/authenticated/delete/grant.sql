-- Verify: schemas/dashboard_public/tables/impacts/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts', 'delete', 'authenticated');
COMMIT;  

