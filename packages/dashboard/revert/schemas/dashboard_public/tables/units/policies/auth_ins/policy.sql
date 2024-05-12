-- Revert: schemas/dashboard_public/tables/units/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".units;
COMMIT;  

