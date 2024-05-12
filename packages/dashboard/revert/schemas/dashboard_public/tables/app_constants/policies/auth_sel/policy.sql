-- Revert: schemas/dashboard_public/tables/app_constants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".app_constants;
COMMIT;  

