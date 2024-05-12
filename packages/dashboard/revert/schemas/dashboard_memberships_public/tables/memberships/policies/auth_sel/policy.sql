-- Revert: schemas/dashboard_memberships_public/tables/memberships/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".memberships;
COMMIT;  

