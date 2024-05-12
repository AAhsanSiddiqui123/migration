-- Revert: schemas/dashboard_public/tables/question_templates/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".question_templates;
COMMIT;  

