-- Revert: schemas/dashboard_public/tables/groups/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".groups;
COMMIT;  

