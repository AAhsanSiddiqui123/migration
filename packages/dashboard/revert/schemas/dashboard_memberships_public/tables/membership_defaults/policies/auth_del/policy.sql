-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_memberships_public".membership_defaults;
COMMIT;  

