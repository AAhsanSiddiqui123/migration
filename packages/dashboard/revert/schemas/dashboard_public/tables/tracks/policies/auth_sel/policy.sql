-- Revert: schemas/dashboard_public/tables/tracks/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".tracks;
COMMIT;  

