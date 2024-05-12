-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_status_public".app_level_requirements;
COMMIT;  

