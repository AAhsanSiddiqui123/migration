-- Revert: schemas/dashboard_public/tables/user_question_language_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_question_language_variations;
COMMIT;  

