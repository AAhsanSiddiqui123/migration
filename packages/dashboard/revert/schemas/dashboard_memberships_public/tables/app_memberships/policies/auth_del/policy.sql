-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_memberships_public".app_memberships;
COMMIT;  

