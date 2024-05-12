-- Revert: schemas/dashboard_public/tables/form_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".form_types;
COMMIT;  

