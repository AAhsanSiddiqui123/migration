-- Revert: schemas/dashboard_public/tables/units/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".units;
COMMIT;  

