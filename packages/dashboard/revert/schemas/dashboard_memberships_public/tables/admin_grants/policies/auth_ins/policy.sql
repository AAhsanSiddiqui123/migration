-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_memberships_public".admin_grants;
COMMIT;  

