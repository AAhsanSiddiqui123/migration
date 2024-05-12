-- Revert: schemas/dashboard_public/tables/question_value_language_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".question_value_language_variations;
COMMIT;  

