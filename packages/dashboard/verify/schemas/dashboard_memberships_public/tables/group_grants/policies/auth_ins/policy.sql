-- Verify: schemas/dashboard_memberships_public/tables/group_grants/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_memberships_public.group_grants');
COMMIT;  

