-- Verify: schemas/dashboard_public/tables/reward_payments/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.reward_payments', 'insert', 'authenticated');
COMMIT;  

