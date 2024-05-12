-- Revert: schemas/dashboard_public/tables/language_dictionary/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".language_dictionary;
COMMIT;  

