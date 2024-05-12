-- Revert: schemas/dashboard_public/tables/global_languages/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".global_languages;
COMMIT;  

