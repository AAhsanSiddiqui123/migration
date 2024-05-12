-- Revert: schemas/dashboard_memberships_public/tables/group_owner_grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".group_owner_grants;
COMMIT;  

