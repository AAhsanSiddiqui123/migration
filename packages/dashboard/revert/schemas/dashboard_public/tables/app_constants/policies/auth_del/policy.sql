-- Revert: schemas/dashboard_public/tables/app_constants/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".app_constants;
COMMIT;  

