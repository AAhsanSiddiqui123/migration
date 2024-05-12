-- Revert: schemas/dashboard_public/tables/action_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".action_variations;
COMMIT;  

