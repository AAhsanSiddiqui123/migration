-- Revert: schemas/dashboard_public/tables/object_records/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".object_records;
COMMIT;  

