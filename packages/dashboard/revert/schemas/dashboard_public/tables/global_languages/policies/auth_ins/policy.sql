-- Revert: schemas/dashboard_public/tables/global_languages/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".global_languages;
COMMIT;  

