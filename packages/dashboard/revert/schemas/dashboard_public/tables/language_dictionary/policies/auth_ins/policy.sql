-- Revert: schemas/dashboard_public/tables/language_dictionary/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".language_dictionary;
COMMIT;  

