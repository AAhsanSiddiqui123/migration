-- Revert: schemas/dashboard_public/tables/question_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".question_types;
COMMIT;  

