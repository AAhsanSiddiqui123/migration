-- Revert: schemas/dashboard_public/tables/global_languages/policies/anon_sel/policy from pg

BEGIN;
DROP POLICY anon_sel ON "dashboard_public".global_languages;
COMMIT;  

