-- Revert: schemas/dashboard_status_public/tables/app_levels/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_status_public".app_levels;
COMMIT;  

