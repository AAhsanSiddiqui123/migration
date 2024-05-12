-- Verify: schemas/dashboard_public/tables/rewards/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.rewards', 'select', 'authenticated');
COMMIT;  

