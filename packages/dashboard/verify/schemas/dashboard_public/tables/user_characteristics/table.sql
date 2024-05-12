-- Verify: schemas/dashboard_public/tables/user_characteristics/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_characteristics');
COMMIT;  

