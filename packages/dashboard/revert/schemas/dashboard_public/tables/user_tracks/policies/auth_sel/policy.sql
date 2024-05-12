-- Revert: schemas/dashboard_public/tables/user_tracks/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".user_tracks;
COMMIT;  

