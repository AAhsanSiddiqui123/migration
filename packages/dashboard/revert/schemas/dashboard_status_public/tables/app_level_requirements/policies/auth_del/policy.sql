-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_status_public".app_level_requirements;
COMMIT;  

