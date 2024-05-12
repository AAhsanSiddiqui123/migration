-- Revert: schemas/dashboard_memberships_public/tables/membership_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".membership_types;
COMMIT;  

