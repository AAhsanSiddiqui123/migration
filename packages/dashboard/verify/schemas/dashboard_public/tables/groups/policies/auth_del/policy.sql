-- Verify: schemas/dashboard_public/tables/groups/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.groups');
COMMIT;  

