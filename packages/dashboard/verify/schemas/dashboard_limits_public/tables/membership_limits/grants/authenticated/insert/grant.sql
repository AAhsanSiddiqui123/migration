-- Verify: schemas/dashboard_limits_public/tables/membership_limits/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.membership_limits', 'insert', 'authenticated');
COMMIT;  

