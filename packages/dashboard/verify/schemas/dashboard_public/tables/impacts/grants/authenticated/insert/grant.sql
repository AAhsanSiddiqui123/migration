-- Verify: schemas/dashboard_public/tables/impacts/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts', 'insert', 'authenticated');
COMMIT;  

