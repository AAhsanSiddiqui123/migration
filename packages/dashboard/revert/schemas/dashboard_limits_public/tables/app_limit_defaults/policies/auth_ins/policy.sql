-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_limits_public".app_limit_defaults;
COMMIT;  

