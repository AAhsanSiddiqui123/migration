-- Verify: schemas/dashboard_public/tables/user_action_item_verifications/policies/auth_upd_verifier/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_verifier', 'dashboard_public.user_action_item_verifications');
COMMIT;  

