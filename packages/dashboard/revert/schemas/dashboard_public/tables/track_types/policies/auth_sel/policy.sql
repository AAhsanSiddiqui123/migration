-- Revert: schemas/dashboard_public/tables/track_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".track_types;
COMMIT;  

