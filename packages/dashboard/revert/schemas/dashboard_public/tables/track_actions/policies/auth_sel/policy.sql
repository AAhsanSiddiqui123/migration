-- Revert: schemas/dashboard_public/tables/track_actions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".track_actions;
COMMIT;  

