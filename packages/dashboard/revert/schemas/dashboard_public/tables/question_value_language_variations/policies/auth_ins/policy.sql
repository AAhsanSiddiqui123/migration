-- Revert: schemas/dashboard_public/tables/question_value_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".question_value_language_variations;
COMMIT;  

