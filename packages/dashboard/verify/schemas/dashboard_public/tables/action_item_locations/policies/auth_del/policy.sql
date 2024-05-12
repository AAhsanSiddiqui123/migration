-- Verify: schemas/dashboard_public/tables/action_item_locations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.action_item_locations');
COMMIT;  

