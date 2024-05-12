-- Verify: schemas/dashboard_public/tables/action_item_types/policies/auth_sel_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_admin', 'dashboard_public.action_item_types');
COMMIT;  

