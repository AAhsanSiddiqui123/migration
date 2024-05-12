-- Revert: schemas/dashboard_public/tables/quantities/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".quantities;
COMMIT;  

