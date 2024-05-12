-- Verify: schemas/dashboard_public/tables/reward_payments/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.reward_payments');
COMMIT;  

