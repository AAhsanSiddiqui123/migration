-- Verify: schemas/dashboard_public/tables/user_action_verifications/policies/auth_ins_verifier/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_verifier', 'dashboard_public.user_action_verifications');
COMMIT;  

