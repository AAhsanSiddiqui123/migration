-- Revert: schemas/dashboard_public/tables/object_records/policies/auth_del_admin/policy from pg

BEGIN;
DROP POLICY auth_del_admin ON "dashboard_public".object_records;
COMMIT;  

