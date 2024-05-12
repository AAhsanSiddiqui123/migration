-- Revert: schemas/dashboard_public/tables/object_attributes/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".object_attributes;
COMMIT;  

