-- Revert: schemas/dashboard_memberships_public/tables/memberships/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_memberships_public".memberships;
COMMIT;  

