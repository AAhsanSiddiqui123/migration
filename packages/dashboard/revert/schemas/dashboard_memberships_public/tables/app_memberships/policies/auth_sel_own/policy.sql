-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "dashboard_memberships_public".app_memberships;
COMMIT;  

