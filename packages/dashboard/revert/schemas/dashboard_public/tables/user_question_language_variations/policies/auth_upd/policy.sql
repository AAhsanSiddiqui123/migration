-- Revert: schemas/dashboard_public/tables/user_question_language_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".user_question_language_variations;
COMMIT;  

