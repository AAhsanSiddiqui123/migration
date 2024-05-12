-- Verify: schemas/dashboard_public/tables/action_item_types/policies/auth_upd_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_admin', 'dashboard_public.action_item_types');
COMMIT;  

