-- Revert: schemas/dashboard_public/tables/form_questions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".form_questions;
COMMIT;  

