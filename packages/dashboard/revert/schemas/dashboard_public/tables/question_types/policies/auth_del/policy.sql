-- Revert: schemas/dashboard_public/tables/question_types/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".question_types;
COMMIT;  

