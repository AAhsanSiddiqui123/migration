-- Revert: schemas/dashboard_public/tables/object_type_values/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".object_type_values;
COMMIT;  

