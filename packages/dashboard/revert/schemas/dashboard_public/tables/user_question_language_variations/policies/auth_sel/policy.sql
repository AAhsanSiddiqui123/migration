-- Revert: schemas/dashboard_public/tables/user_question_language_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".user_question_language_variations;
COMMIT;  

