-- Revert: schemas/dashboard_public/tables/object_type_attributes/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".object_type_attributes;
COMMIT;  

