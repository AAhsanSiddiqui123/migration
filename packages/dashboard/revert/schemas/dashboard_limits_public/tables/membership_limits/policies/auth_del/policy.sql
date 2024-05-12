-- Revert: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_limits_public".membership_limits;
COMMIT;  

