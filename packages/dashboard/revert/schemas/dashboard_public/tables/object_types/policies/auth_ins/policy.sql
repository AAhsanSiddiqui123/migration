-- Revert: schemas/dashboard_public/tables/object_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".object_types;
COMMIT;  

