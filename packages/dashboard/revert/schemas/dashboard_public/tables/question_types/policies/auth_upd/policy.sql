-- Revert: schemas/dashboard_public/tables/question_types/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".question_types;
COMMIT;  

