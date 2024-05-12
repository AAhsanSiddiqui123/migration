-- Verify: schemas/dashboard_public/tables/user_action_verifications/policies/auth_sel_verifier/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_verifier', 'dashboard_public.user_action_verifications');
COMMIT;  

