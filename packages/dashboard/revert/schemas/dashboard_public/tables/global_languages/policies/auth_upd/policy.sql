-- Revert: schemas/dashboard_public/tables/global_languages/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".global_languages;
COMMIT;  

