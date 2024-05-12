-- Revert: schemas/dashboard_public/tables/object_records/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".object_records;
COMMIT;  

