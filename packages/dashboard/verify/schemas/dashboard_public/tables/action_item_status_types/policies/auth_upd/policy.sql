-- Verify: schemas/dashboard_public/tables/action_item_status_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.action_item_status_types');
COMMIT;  

