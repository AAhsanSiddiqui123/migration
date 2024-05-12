-- Revert: schemas/dashboard_public/tables/object_records/policies/auth_upd_admin/policy from pg

BEGIN;
DROP POLICY auth_upd_admin ON "dashboard_public".object_records;
COMMIT;  

