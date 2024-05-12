-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".owner_grants;
COMMIT;  

