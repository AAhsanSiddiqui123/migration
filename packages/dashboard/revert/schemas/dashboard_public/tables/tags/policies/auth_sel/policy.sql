-- Revert: schemas/dashboard_public/tables/tags/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".tags;
COMMIT;  

