-- Verify: schemas/dashboard_public/tables/reward_payments/table on pg

BEGIN;
SELECT verify_table('dashboard_public.reward_payments');
COMMIT;  

