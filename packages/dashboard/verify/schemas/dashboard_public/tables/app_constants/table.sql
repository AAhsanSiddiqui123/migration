-- Verify: schemas/dashboard_public/tables/app_constants/table on pg

BEGIN;
SELECT verify_table('dashboard_public.app_constants');
COMMIT;  

