-- Verify: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_characteristics', 'update', 'authenticated');
COMMIT;  

