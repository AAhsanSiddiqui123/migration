-- Revert: schemas/dashboard_public/tables/app_constants/policies/anon_sel/policy from pg

BEGIN;
DROP POLICY anon_sel ON "dashboard_public".app_constants;
COMMIT;  

