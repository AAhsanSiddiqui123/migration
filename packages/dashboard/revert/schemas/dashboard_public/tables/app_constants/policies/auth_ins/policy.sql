-- Revert: schemas/dashboard_public/tables/app_constants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".app_constants;
COMMIT;  

