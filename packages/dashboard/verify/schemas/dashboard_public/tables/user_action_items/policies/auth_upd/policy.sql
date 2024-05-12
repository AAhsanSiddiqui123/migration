-- Verify: schemas/dashboard_public/tables/user_action_items/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.user_action_items');
COMMIT;  

