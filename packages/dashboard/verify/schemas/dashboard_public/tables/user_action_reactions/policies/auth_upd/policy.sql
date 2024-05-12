-- Verify: schemas/dashboard_public/tables/user_action_reactions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.user_action_reactions');
COMMIT;  

