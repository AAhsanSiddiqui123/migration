-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "dashboard_memberships_public".group_memberships;
COMMIT;  

