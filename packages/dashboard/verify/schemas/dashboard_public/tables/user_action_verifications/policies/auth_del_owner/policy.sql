-- Verify: schemas/dashboard_public/tables/user_action_verifications/policies/auth_del_owner/policy on pg

BEGIN;
SELECT verify_policy('auth_del_owner', 'dashboard_public.user_action_verifications');
COMMIT;  

