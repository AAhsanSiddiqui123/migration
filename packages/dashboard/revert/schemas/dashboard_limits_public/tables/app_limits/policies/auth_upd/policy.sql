-- Revert: schemas/dashboard_limits_public/tables/app_limits/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_limits_public".app_limits;
COMMIT;  

