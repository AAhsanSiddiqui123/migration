-- Revert: schemas/dashboard_public/tables/form_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".form_types;
COMMIT;  

