-- Revert: schemas/dashboard_public/tables/form_types/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".form_types;
COMMIT;  

