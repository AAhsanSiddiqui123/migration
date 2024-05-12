-- Revert: schemas/dashboard_public/tables/object_attributes/policies/auth_sel_public/policy from pg

BEGIN;
DROP POLICY auth_sel_public ON "dashboard_public".object_attributes;
COMMIT;  

