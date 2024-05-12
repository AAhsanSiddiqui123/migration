-- Revert: schemas/dashboard_public/tables/question_value_language_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".question_value_language_variations;
COMMIT;  

