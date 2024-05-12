-- Verify: schemas/dashboard_public/tables/rewards/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.rewards', 'insert', 'authenticated');
COMMIT;  

