-- Verify: schemas/dashboard_limits_public/tables/membership_limits/table on pg

BEGIN;
SELECT verify_table('dashboard_limits_public.membership_limits');
COMMIT;  

