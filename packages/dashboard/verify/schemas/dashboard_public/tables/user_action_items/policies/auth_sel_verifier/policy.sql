-- Verify: schemas/dashboard_public/tables/user_action_items/policies/auth_sel_verifier/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_verifier', 'dashboard_public.user_action_items');
COMMIT;  

