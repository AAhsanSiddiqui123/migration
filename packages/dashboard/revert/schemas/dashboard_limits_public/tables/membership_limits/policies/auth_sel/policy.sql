-- Revert: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_limits_public".membership_limits;
COMMIT;  

