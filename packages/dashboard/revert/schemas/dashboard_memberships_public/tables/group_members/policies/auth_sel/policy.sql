-- Revert: schemas/dashboard_memberships_public/tables/group_members/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".group_members;
COMMIT;  

