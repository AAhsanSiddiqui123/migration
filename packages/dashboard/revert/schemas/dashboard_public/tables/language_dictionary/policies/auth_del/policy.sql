-- Revert: schemas/dashboard_public/tables/language_dictionary/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".language_dictionary;
COMMIT;  

