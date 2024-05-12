-- Revert: schemas/dashboard_status_public/tables/app_levels/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_status_public".app_levels;
COMMIT;  

