-- Revert: schemas/dashboard_limits_public/tables/app_limits/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_limits_public".app_limits;
COMMIT;  

