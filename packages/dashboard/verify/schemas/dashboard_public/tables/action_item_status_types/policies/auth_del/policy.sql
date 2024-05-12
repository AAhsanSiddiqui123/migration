-- Verify: schemas/dashboard_public/tables/action_item_status_types/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.action_item_status_types');
COMMIT;  

