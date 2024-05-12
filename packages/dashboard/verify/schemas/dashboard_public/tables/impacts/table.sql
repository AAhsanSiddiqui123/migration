-- Verify: schemas/dashboard_public/tables/impacts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.impacts');
COMMIT;  

