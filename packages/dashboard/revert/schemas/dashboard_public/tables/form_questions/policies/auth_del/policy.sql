-- Revert: schemas/dashboard_public/tables/form_questions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".form_questions;
COMMIT;  

