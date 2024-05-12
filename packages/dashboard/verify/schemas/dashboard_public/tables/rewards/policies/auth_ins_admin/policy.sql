-- Verify: schemas/dashboard_public/tables/rewards/policies/auth_ins_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_admin', 'dashboard_public.rewards');
COMMIT;  

