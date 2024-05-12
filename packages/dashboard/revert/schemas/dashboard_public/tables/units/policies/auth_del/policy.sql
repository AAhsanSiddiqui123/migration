-- Revert: schemas/dashboard_public/tables/units/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".units;
COMMIT;  

