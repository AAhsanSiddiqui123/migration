-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_memberships_public".group_membership_defaults;
COMMIT;  

