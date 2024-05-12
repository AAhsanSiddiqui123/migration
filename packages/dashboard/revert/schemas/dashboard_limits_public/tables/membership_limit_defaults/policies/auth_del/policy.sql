-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_limits_public".membership_limit_defaults;
COMMIT;  

