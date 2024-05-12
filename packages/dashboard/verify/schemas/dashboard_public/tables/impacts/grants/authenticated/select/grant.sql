-- Verify: schemas/dashboard_public/tables/impacts/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts', 'select', 'authenticated');
COMMIT;  

