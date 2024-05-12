-- Revert: schemas/dashboard_public/tables/question_value_language_variations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".question_value_language_variations;
COMMIT;  

