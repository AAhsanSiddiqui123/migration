-- Verify: schemas/dashboard_public/tables/rewards/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.rewards', 'update', 'authenticated');
COMMIT;  

