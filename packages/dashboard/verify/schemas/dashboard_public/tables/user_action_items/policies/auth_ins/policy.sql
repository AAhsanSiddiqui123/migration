-- Verify: schemas/dashboard_public/tables/user_action_items/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.user_action_items');
COMMIT;  

