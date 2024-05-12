-- Revert: schemas/dashboard_public/tables/data_tags/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".data_tags;
COMMIT;  

