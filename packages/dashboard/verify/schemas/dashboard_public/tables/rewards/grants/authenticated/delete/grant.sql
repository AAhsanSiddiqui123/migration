-- Verify: schemas/dashboard_public/tables/rewards/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.rewards', 'delete', 'authenticated');
COMMIT;  

