-- Revert: schemas/dashboard_memberships_public/tables/memberships/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_memberships_public".memberships;
COMMIT;  

