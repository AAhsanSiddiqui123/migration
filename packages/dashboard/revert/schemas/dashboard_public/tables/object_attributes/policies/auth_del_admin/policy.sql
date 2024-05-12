-- Revert: schemas/dashboard_public/tables/object_attributes/policies/auth_del_admin/policy from pg

BEGIN;
DROP POLICY auth_del_admin ON "dashboard_public".object_attributes;
COMMIT;  

