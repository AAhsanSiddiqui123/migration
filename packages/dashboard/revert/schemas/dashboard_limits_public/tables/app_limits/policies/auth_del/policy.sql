-- Revert: schemas/dashboard_limits_public/tables/app_limits/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_limits_public".app_limits;
COMMIT;  

