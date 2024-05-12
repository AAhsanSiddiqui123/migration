-- Revert: schemas/dashboard_public/tables/object_records/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".object_records;
COMMIT;  

