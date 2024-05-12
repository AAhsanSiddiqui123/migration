-- Revert: schemas/dashboard_public/tables/form_questions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".form_questions;
COMMIT;  

