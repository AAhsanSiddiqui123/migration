-- Revert: schemas/dashboard_public/tables/language_dictionary/policies/anon_sel/policy from pg

BEGIN;
DROP POLICY anon_sel ON "dashboard_public".language_dictionary;
COMMIT;  

