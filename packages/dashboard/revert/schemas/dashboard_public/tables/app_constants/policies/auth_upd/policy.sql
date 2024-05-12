-- Revert: schemas/dashboard_public/tables/app_constants/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".app_constants;
COMMIT;  

