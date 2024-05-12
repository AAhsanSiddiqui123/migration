-- Verify: schemas/dashboard_public/tables/action_item_locations/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.action_item_locations');
COMMIT;  

