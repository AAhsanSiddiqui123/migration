-- Verify: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_characteristics', 'select', 'authenticated');
COMMIT;  

