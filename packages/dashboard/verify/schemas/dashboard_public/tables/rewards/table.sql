-- Verify: schemas/dashboard_public/tables/rewards/table on pg

BEGIN;
SELECT verify_table('dashboard_public.rewards');
COMMIT;  

