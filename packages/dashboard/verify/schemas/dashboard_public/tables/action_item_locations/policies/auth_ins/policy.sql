-- Verify: schemas/dashboard_public/tables/action_item_locations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.action_item_locations');
COMMIT;  

