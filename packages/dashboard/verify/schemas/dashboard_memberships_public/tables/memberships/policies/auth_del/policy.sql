-- Verify: schemas/dashboard_memberships_public/tables/memberships/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_memberships_public.memberships');
COMMIT;  

