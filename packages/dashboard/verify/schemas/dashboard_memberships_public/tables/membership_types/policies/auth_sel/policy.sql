-- Verify: schemas/dashboard_memberships_public/tables/membership_types/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_memberships_public.membership_types');
COMMIT;  

