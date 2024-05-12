-- Verify: schemas/dashboard_public/tables/groups/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.groups');
COMMIT;  

