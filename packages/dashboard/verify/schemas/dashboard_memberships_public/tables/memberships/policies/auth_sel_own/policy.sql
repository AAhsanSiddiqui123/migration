-- Verify: schemas/dashboard_memberships_public/tables/memberships/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'dashboard_memberships_public.memberships');
COMMIT;  

